package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Picture;
import com.huanglin.pro.domain.Receiver;
import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;

public class ReceiveDaoImpl implements ReceiverDao {

	public ReceiveDaoImpl() {
	}

	@Override
	public void addShoes(Receiver receiver) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.save(receiver);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	@Override
	public void delete(int recid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Receiver picture = (Receiver) Hibernateutil.session.get(Receiver.class, recid);
			Hibernateutil.session.delete(picture);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	@Override
	public void updateShoes(Receiver receiver) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.saveOrUpdate(receiver);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	@Override
	public Receiver findById(int recid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Receiver receiver = null;
		try{
			receiver = (Receiver)Hibernateutil.session.get(Receiver.class, recid);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return receiver;
	}

	@Override
	public List<Receiver> loadAll() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Receiver> lisrec =null;
		try{
			lisrec = (List<Receiver>) Hibernateutil.session.createQuery("from Receiver r").list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return lisrec;
	}

}
