package com.example.contrains;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;

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

	public static String handlerPrice(String price){
		if(price == null){
			return null;
		}
		price = price.trim().replaceAll(" ", "");
		int index = price.indexOf(GlobalSetting.SPACE_PRICE);
		if(index != 1){
			Pattern pattern = Pattern.compile(GlobalSetting.NUMBER_PATTERN);
			String[] split = price.split(GlobalSetting.SPACE_PRICE);
			if(split.length == 2){
				if(pattern.matcher(split[0]).matches()
						&& pattern.matcher(split[1]).matches()){
					return price;
				}
			}
		}
		return null;
	}
	
	public static String preHandlerParam(String param){
		if(param == null){
			return null;
		}
		param = param.trim().replaceAll(" ", "");
		return param;
	}
}
