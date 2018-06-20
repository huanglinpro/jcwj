/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.Base;
import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;


/**
 * @author lenovo
 *
 */
public class AdmDaoImpl extends BaseDao implements AdmDao {

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#addAdm(com.huanglin.pro.domain.Adm)
	 */
	@Override
	public void addAdm(Adm adm) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.save(adm);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#delete(int)
	 */
	@Override
	public void delete(int id) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try {
			Adm adm = (Adm) Hibernateutil.session.get(Adm.class,id);
			Hibernateutil.session.delete(adm);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#updateAdm(com.huanglin.pro.domain.Adm)
	 */
	@Override
	public void updateAdm(Adm adm) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.saveOrUpdate(adm);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#findById(int)
	 */
	@Override
	public Adm findById(int id) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Adm adm = new Adm();
		try {
			adm = (Adm) Hibernateutil.session.get(Adm.class, id);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return adm;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#findByName(java.lang.String)
	 */
	@Override
	public Adm findByName(String name) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Adm ad = new Adm();
		try {
			Query query = Hibernateutil.session.createQuery("select * from Adm a where a.admName=?");
			ad = (Adm) query.setString(1, name);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
		return ad;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.AdmDao#loadAll()
	 */
	@Override
	public List<Adm> loadAll() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Adm> admlist = null;
		try {
			admlist = (List<Adm>) Hibernateutil.session.createQuery(SQL_ADM_LOAD).list();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return admlist;
	}

}
