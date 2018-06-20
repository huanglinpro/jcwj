/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Notice;
import com.huanglin.pro.util.Hibernateutil;

/**
 * @author lenovo
 *
 */
public class NoticeDaoImpl extends BaseDao implements NoticeDao {

	/**
	 * 
	 */
	public NoticeDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.NoticeDao#addNotice(com.huanglin.pro.domain.Notice)
	 */
	@Override
	public void addNotice(Notice notice) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.save(notice);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.NoticeDao#deteteNotice(int)
	 */
	@Override
	public void deteteNotice(int nid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Notice notice = (Notice) Hibernateutil.session.get(Notice.class, nid);
			Hibernateutil.session.delete(notice);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.NoticeDao#listNotice()
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> listNotice() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Notice> listnotice = null;
		try{
			Query query =  (Query) Hibernateutil.session.createQuery(SQL_NOTICE_LOAD);
			query.setFirstResult(5);


//			query.setMaxResults(3);
			listnotice =(List<Notice>) query.list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listnotice;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.NoticeDao#findNoticeByid(int)
	 */
	@Override
	public Notice findNoticeByid(int nid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Notice notice = null;
		try{
			notice = (Notice) Hibernateutil.session.get(Notice.class, nid);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return notice;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.NoticeDao#updateNotice(com.huanglin.pro.domain.Notice)
	 */
	@Override
	public void updateNotice(Notice notice) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.saveOrUpdate(notice);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	@Override
	public List<Notice> listAllNotice() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Notice> listnotice = null;
		try{
			listnotice = (List<Notice>) Hibernateutil.session.createQuery(SQL_NOTICE_LOAD).list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listnotice;
	}

}
