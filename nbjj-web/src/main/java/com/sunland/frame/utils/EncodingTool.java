package com.sunland.frame.utils;

import java.io.UnsupportedEncodingException;

/**
 * Created by xdb on 2016/5/27.
 */
public class EncodingTool {
    public static String encodeStr(String str) {
        try {
            return new String(str.getBytes("ISO-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
