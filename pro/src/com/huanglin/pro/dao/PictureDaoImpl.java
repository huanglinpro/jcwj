package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Picture;
import com.huanglin.pro.util.Hibernateutil;

public class PictureDaoImpl extends BaseDao implements PictureDao {

	private static final int List = 0;

	public PictureDaoImpl() {
	}

	@Override
	public void addPicture(Picture picture) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.save(picture);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

	@Override
	public void detetePicture(int pid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Picture picture = (Picture) Hibernateutil.session.get(Picture.class, pid);
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
	public List<Picture> listPicture() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Picture> listpic = null;
		try{
			listpic = (List<Picture>) Hibernateutil.session.createQuery(SQL_PICTURE_LOAD).list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listpic;
	}



}
