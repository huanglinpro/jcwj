package com.huanglin.pro.dao;

public class BaseDao {
	
	protected final static String SQL_SHOES_LOAD = "from Shoes s order by s.shoesPrise desc"; //sql list all shoes
	protected final static String SQL_USER_LOADUSER = " from User u"; //列出所有用户
	protected final static String SQL_ADM_LOAD ="from Adm a"; // sql list all adm
	protected final static String SQL_GE_ADMMBY_NAME="from Adm a where a.admName=";
	protected final static String SQL_GET_SHOESBY_NAME="from Adm a where a.admName=?";
	protected final static String SQL_CAR_LOAD = "from Car c";
	protected final static String SQL_MESSAGE_LOAD ="from Message m";
	protected final static String SQL_NOTICE_LOAD ="from Notice as n";
	protected final static String SQL_ORDER_LOAD = "from Order as o";
	protected final static String SQL_PICTURE_LOAD = "from Picture as p";
}

