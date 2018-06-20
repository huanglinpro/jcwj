/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.apache.logging.log4j.core.config.yaml.YamlConfiguration;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;

/**
 * @author lenovo
 *
 */
public class  ShoesDaoImpl extends BaseDao implements ShoesDao {

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#addShoes(com.huanglin.pro.domain.Shoes)
	 */
	@Override
	public void addShoes(Shoes shoes) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.save(shoes);
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#delete(int)
	 */
	@Override
	public void delete(int id) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		Shoes shoes = null;
		try {
			shoes = (Shoes) Hibernateutil.session.load(Shoes.class, id);
			Hibernateutil.session.delete(shoes);
			trans.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#updateShoes(com.huanglin.pro.domain.User)
	 */
	@Override
	public void updateShoes(Shoes shoes) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.saveOrUpdate(shoes);
			trans.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#findById(int)
	 */
	@Override
	public Shoes findById(int id) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction(); 
		Shoes shoes = null;
		try {
			shoes = (Shoes) Hibernateutil.session.get(Shoes.class, id);
			trans.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return shoes;
	}  

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#findByName(java.lang.String)
	 */
	@Override
	public Shoes findByName(String name) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		Shoes shoes = null;
		try {
			shoes = (Shoes) Hibernateutil.session.createQuery(SQL_GET_SHOESBY_NAME);
			trans.commit();
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return shoes;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.ShoesDao#loadAll()
	 */
	@Override
	public List<Shoes> loadAll() {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		List<Shoes> listshoes = null;
		try {
			
			listshoes = (List<Shoes>) Hibernateutil.session.createQuery(SQL_SHOES_LOAD).list();
			trans.commit();
			
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listshoes;
	}

}
