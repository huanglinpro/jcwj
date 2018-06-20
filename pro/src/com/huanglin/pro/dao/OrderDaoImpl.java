package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Order;
import com.huanglin.pro.util.Hibernateutil;

public class OrderDaoImpl extends BaseDao implements OrderDao {

	public OrderDaoImpl() {
		// TODO Auto-generated constructor stub
	}	

	@Override
	public void addOrder(Order order) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.save(order);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

	@Override
	public void delete(int oid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Order o = (Order) Hibernateutil.session.get(Order.class,oid);
			Hibernateutil.session.delete(o);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

	@Override
	public void updateOrder(Order order) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Hibernateutil.session.saveOrUpdate(order);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		
	}

	@Override
	public List<Order> loadAllOrder() {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		List<Order> listorder = null;
		try{
			listorder =(List<Order>) Hibernateutil.session.createQuery(SQL_ORDER_LOAD).list();
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listorder;
	}

	@Override
	public Order getorderById(int oid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		Order order = null;
		try{
			order =(Order) Hibernateutil.session.get(Order.class, oid);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return order;
	}

}
