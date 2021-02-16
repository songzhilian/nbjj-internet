package com.sunland.frame.utils;

import java.util.ResourceBundle;

/**
 * Created by xdb on 2016/5/31.
 */
public class AcdProperties {
    private static ResourceBundle resouce = ResourceBundle.getBundle("acd"); //这个名字就是.properties文件名
    public static String getString(String key) {
        return resouce.getString(key);
    }
}
