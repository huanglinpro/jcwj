/**
 * 
 */
package com.huanglin.pro.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.huanglin.pro.dao.AdmDao;
import com.huanglin.pro.dao.AdmDaoImpl;
import com.huanglin.pro.domain.Adm;

/**
 * @author lenovo
 *
 */
public class AdmText {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		AdmDao ado = new AdmDaoImpl();
//		Adm adm = new Adm();
//		
		SimpleDateFormat da = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		adm = (Adm) ado.findByName("root2");
		System.out.println(da.format(new java.sql.Date(new Date().getTime())));
		System.out.println(da.format(new Date().getTime()));
		System.out.println();
	}

}
