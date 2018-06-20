/**
 * 
 */
package com.huanglin.pro.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Test;

import com.huanglin.pro.domain.Adm;

/**
 * @author huanglin
 *
 */
public class Hibernateutil {
	/**
	 * Hibernateπ§æﬂ¿‡
	 * */
	public static  SessionFactory fectory = null;
	public static  Session session = null;
	
	public static void getStartHibernate(){
		Configuration config = new Configuration();
		config.configure("/com/huanglin/pro/config/hibernate.cfg.xml");
		fectory = config.buildSessionFactory();
		session = fectory.openSession();
	}
	
	public static void getClose(){
		
		if( session.isOpen()   ){
			session.close();
		}
		if( !fectory.isClosed() ){
			fectory.close();
		}
	}
	
}
