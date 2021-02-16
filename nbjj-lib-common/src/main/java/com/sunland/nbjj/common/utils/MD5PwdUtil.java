/* ============================================================
 * ��Ȩ��     �㽭�ŵ� ��Ȩ���� (c) 2006
 * �ļ���     com.sunland.util.getMdPassword.java
 * �������ڣ� 2006-9-27  ����10:01:09
 * ��������                               ����        
 * ============================================================
 * 2006-9-27  ����10:01:09        wdl    
 * ============================================================
 */

package com.sunland.nbjj.common.utils;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * MD5����
 * @author wdl
 *
 */
public class MD5PwdUtil {
	
	private static String byte2hex(byte[] mybytes) {
		String hs = "";
		String stmp = "";
		for (int n = 0; n < mybytes.length; n++) {
			stmp = (Integer.toHexString(mybytes[n] & 0XFF));
			if (stmp.length() == 1) {
				hs = hs + "0" + stmp;
			} else {
				hs = hs + stmp;
			}
		}
		return hs.toUpperCase();
	}
	
	/**
	 * ����
	 * @param inputStr ��Ҫ���ܵ��ַ���
	 * @return ���ܵ��ַ���
	 */
	public static String encodePassword(String inputStr) {
		byte[] digesta = null;
		try {
			/**ʵ������*/
			MessageDigest alga = MessageDigest.getInstance("MD5");
			
			/**����������ַ���*/
			alga.update(inputStr.getBytes());
			
			/**��ȡ�����ַ���*/
			digesta = alga.digest();
			
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return byte2hex(digesta);
	}
	
	/**
	 * ϵͳ��ʼ���������
	 * @return ϵͳ��ʼ����������
	 */
	public static String initializePassword(){
		byte[] digesta=null;
		String initializeStr="123456";//
		try{
			MessageDigest md5=MessageDigest.getInstance("MD5");
			md5.update(initializeStr.getBytes());
			digesta=md5.digest();
		}catch(NoSuchAlgorithmException e){
			e.printStackTrace();
		}
		return byte2hex(digesta);
	}
	
	public static String strToinfo(String str) {
            sun.misc.BASE64Decoder decoder = new sun.misc.BASE64Decoder();//base64������
            byte[] b=null;
            try {
				 b = decoder.decodeBuffer(str);
				return new String(b);
			} catch (IOException e) {
				e.printStackTrace();
				return "";
			}            
           
    }
}
