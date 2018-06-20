/**
 * 
 */
package com.huanglin.pro.sysinerceptors;

import java.util.List;

import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

/**
 * @author lenovo
 *
 */
public class Interater implements Interceptor{

	/**
	 * 
	 */
	public Interater() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		// TODO Auto-generated method stub
		UserDao ud = new UserDaoImpl();
		List<User> listuser = ud.loadAll();
		return "firstpage";
	}

}
