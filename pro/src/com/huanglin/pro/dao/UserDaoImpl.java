/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;

/**
 * @author huanglin
 *
 */
public class UserDaoImpl extends BaseDao implements UserDao  {
	

	/* (non-Javadoc)   
	 * @see com.huanglin.pro.dao.UserDao#addUser()
	 */
	@Override
	public void addUser(User user) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.save(user);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.UserDao#delete()
	 */
	@Override
	public void delete(int id) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			User user = (User) Hibernateutil.session.get(User.class, id);
			Hibernateutil.session.delete(user);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}



	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.UserDao#findById()
	 */
	@Override
	public User findById(int id) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		User user = null;
		try {
			user = (User)Hibernateutil.session.get(User.class, id);
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}
		return user;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.UserDao#findByName()
	 */
	@Override
	public User findByName(String name) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		User user = null;
		try {
			
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return user;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.UserDao#loadAll()
	 */
	@Override
	public List<User> loadAll() {
		
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		List<User> userlist = null;
		try {
			userlist = (List<User>) Hibernateutil.session.createQuery("from User u").list();
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return userlist;
	}

	@Override
	public void updateUser(User user) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.saveOrUpdate(user);
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

	

}
