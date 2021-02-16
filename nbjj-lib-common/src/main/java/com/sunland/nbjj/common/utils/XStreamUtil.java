package com.sunland.nbjj.common.utils;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.naming.NameCoder;
import com.thoughtworks.xstream.io.xml.Xpp3DomDriver;
import com.thoughtworks.xstream.mapper.CannotResolveClassException;
import com.thoughtworks.xstream.mapper.Mapper;
import com.thoughtworks.xstream.mapper.MapperWrapper;
import org.apache.log4j.Logger;

import java.util.Map;
import java.util.WeakHashMap;

/**
 * XStream工具类
 * Created by xdb on 2016-3-31.
 */
public class XStreamUtil {

    private static Logger logger = Logger.getLogger(XStreamUtil.class);

    private static Map<Class<?>, XStream> xStreamMap = new WeakHashMap<Class<?>, XStream>();

    /**
     * 转换过程中特殊字符转码
     */
    private static NameCoder nameCoder = new NameCoder() {
        public String encodeNode(String arg0) {
            return arg0;
        }

        public String encodeAttribute(String arg0) {
            return arg0;
        }

        public String decodeNode(String arg0) {
            return arg0;
        }

        public String decodeAttribute(String arg0) {
            return arg0;
        }
    };

    /**
     * 在xml中多余的节点生成bean时会抛出异常
     * 通过该mapperWrapper跳过不存在的属性
     *
     * @param mapper
     * @return MapperWrapper [返回类型说明]
     * @throws throws [异常类型] [异常说明]
     * @see [类、类#方法、类#成员]
     */
    private static MapperWrapper createSkipOverElementMapperWrapper(Mapper mapper) {
        MapperWrapper resMapper = new MapperWrapper(mapper) {
            @SuppressWarnings("rawtypes")
            @Override
            public Class realClass(String elementName) {
                Class res = null;
                try {
                    res = super.realClass(elementName);
                } catch (CannotResolveClassException e) {
                    logger.warn(String.format("xstream change xml to object. filed %s not exsit. ", elementName));
                }
                return res;
            }
        };
        return resMapper;
    }

    /**
     * 获取xstream转换对象
     *
     * @param classType
     * @return XStream [返回类型说明]
     * @throws throws [异常类型] [异常说明]
     * @see [类、类#方法、类#成员]
     */
    public static XStream getXstream(Class<?> classType) {
        return getXstream(classType, true);
    }

    /**
     * 获取xstream转换对象
     *
     * @param classType
     * @param isSkipOverElement
     * @return XStream [返回类型说明]
     * @throws throws [异常类型] [异常说明]
     * @see [类、类#方法、类#成员]
     */
    public static XStream getXstream(Class<?> classType, boolean isSkipOverElement) {
        if (xStreamMap.containsKey(classType)) {
            return xStreamMap.get(classType);
        }
        XStream res = null;
        if (isSkipOverElement) {
            res = new XStream(new Xpp3DomDriver(nameCoder)) {
                protected MapperWrapper wrapMapper(MapperWrapper next) {
                    return createSkipOverElementMapperWrapper(next);
                }
            };
        } else {
            res = new XStream(new Xpp3DomDriver(nameCoder));
        }
        logger.info(String.format("create xstream by %s , parameter %s", classType.getName(), isSkipOverElement));
        res.processAnnotations(classType);
        xStreamMap.put(classType, res);
        return res;
    }
}
