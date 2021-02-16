package com.sunland.nbjj.common.utils;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.map.SerializationConfig;
import java.io.IOException;

/**
 * json转换工具
 * @author 徐董波
 * @create 2017-11-03 15:43
 */
public class JsonUtil {

    private static Logger logger = Logger.getLogger(JsonUtil.class);

    public static String writeValueAsString(Object o) {
        ObjectMapper mapper = new ObjectMapper();
        mapper.disable(SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS);
        try {
            return mapper.writeValueAsString(o);
        } catch (IOException e) {
            logger.error("json序列化错误", e);
        }
        return null;
    }

    public static <T> T readObject(String json, Class<T> clazz) {
        ObjectMapper mapper = new ObjectMapper();
        mapper.disable(org.codehaus.jackson.map.DeserializationConfig.Feature.FAIL_ON_UNKNOWN_PROPERTIES);
        try {
            return mapper.readValue(json, clazz);
        } catch (IOException e) {
            logger.error("json反序列化错误", e);
        }
        return null;
    }
}
