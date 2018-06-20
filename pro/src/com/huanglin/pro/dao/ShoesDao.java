/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;

/**
 * @author lenovo
 *
 */
public interface ShoesDao {

	void addShoes(Shoes shoes);
	void delete(int id);
	void updateShoes(Shoes user);
	Shoes findById(int id);
	Shoes findByName(String name);
	List<Shoes> loadAll();
}
