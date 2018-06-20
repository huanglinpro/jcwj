/**
 * 
 */
package com.huanglin.pro.service;

import java.util.List;

import com.huanglin.pro.domain.User;

/**
 * @author lenovo
 *
 */
public interface UserService extends BaseService {
	
	void add();
	void delete();
	void update();
	User findByid();
	User findByName();
	List<User> load();
	
}
