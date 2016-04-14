package com.example.contrains;

public class GlobalSetting {

	public static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
			+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	
	public static final String CHARACTER_PATTERN = "\\w";
	
	public static final String NUMBER_PATTERN = "\\d";
	
	public static final int PASSWORD_LENGTH = 6;
	
	public static final int ITEM_PER_PAGE = 12;
	
	public static final String SPACE_CATEGORY = "/";
	
	public static final String SPACE_ATTR = ",";
	
	public static final String SPACE_PRICE = "-";
	
	public static final String[] FILTER_ORDER = {"position", "name", "price"};
	
	public static final String[] FILTER_DIR = {"asc", "desc"};

}
