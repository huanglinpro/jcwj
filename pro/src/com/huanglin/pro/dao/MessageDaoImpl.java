/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;
import org.hibernate.engine.HibernateIterator;

import com.huanglin.pro.domain.Message;
import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;
import com.mysql.fabric.xmlrpc.base.Array;

/**
 * @author lenovo
 *
 */
public class MessageDaoImpl extends BaseDao implements MessageDao {

	/**
	 * 
	 */
	public MessageDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.MessageDao#addMessage(com.huanglin.pro.domain.Message)
	 */
	@Override
	public void addMessage(Message mes) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.save(mes);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.MessageDao#deteteMessage(int)
	 */
	@Override
	public void deteteMessage(int mid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Message message = (Message) Hibernateutil.session.get(Message.class, mid);
			Hibernateutil.session.delete(message);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.MessageDao#listMessage()
	 */
	@Override
	public List<Message> listMessage() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Message> mlist = new ArrayList<Message>();
		try{
			mlist = (List<Message>) Hibernateutil.session.createQuery(SQL_MESSAGE_LOAD).list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return mlist;
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.MessageDao#findByid()
	 */
	@Override
	public Message findByid(int mid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Message mes = new Message();
		try{
			mes = (Message) Hibernateutil.session.get(Message.class,mid);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return mes;
	}

	@Override
	public void updateMes(Message mes) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.saveOrUpdate(mes);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

}
