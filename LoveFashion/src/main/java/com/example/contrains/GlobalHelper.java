package com.example.contrains;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class GlobalHelper {

	public static String hashPassword(String password)
			throws NoSuchAlgorithmException {
		MessageDigest md = MessageDigest.getInstance("MD5");
		md.update(password.getBytes());
		byte[] hashedBytes = md.digest();
		StringBuffer stringBuffer = new StringBuffer();
		for (int i = 0; i < hashedBytes.length; i++) {
			stringBuffer.append(Integer.toString(
					(hashedBytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		return stringBuffer.toString();
	}
	
	public static String splitAbtributeFilter(String url, String abtribute){
		String param = null;
		if(url != null && url.indexOf(abtribute) != -1){
			int pos = url.indexOf(abtribute);
			if(url.indexOf(GlobalSetting.SPACE_CATEGORY) != -1){
				param = url.substring(pos, url.indexOf(GlobalSetting.SPACE_CATEGORY)); 
			} else{
				if(url.indexOf(".html") != -1){
					param = url.substring(pos, url.indexOf(".html"));
				}
			}
		}
		if(param != null){
			param = param.replace(abtribute + "/", "");
		}
		return param;
	}
}
