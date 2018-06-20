package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.User;

public interface UserDao {
	
	void addUser(User user);
	void delete(int id);
	void updateUser(User user);
	User findById(int id);
	User findByName(String name);
	List<User> loadAll();
	
}
                                                                            