/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.cfg.annotations.reflection.XMLContext.Default;

import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.User;

/**
 * @author huanglin
 *
 */
public interface AdmDao {
	
	void addAdm(Adm adm);
	void delete(int id);
    void updateAdm(Adm adm);
	Adm findById(int id);
	Adm findByName(String name);
	List<Adm> loadAll();
}