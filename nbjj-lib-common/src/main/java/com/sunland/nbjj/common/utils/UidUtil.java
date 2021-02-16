package com.sunland.nbjj.common.utils;

import org.apache.log4j.Logger;

import java.util.UUID;

/**
 * UUID生成工具类
 * Created by xdb on 2016-3-31.
 */
public class UidUtil {

    private static final Logger logger = Logger.getLogger(UidUtil.class);

    /**
     * 随机生成UUID码
     * @return
     */
    public static String getUid(){
        return UUID.randomUUID().toString().replace("-","");
    }
}
