/**
 * 
 */
package com.huanglin.pro.test;

import java.util.ArrayList;
import java.util.List;

import com.huanglin.pro.dao.AdmDao;
import com.huanglin.pro.dao.AdmDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;

/**
 * @author lenovo
 *
 */
public class Utest {

	/**
	 * @param args
	 */

	public static void main(String[] args) {

//		Adm a = new Adm();
		Shoes s = new Shoes();
		s.setNub(23);
		s.setShoesBrand("sadf");
		 List<Shoes> slist = new ArrayList<Shoes>();
		 slist.add(s);
		 for(Shoes d: slist ){
			 System.out.println(d.getNub());
		 }
	   
//		
//		AdmDao ad = new AdmDaoImpl();
//		a = ad.findByName("root1");
//		System.out.println(a.getAdmPhone());
//		
		
	}

}