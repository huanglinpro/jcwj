/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Transaction;

import com.huanglin.pro.domain.Car;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;
import com.huanglin.pro.util.Hibernateutil;

/**
 * @author lenovo
 *
 */
public class CarDaoImpl extends BaseDao implements CarDao {

	/**
	 * 
	 */
	public CarDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.CarDao#addCarShoes()
	 */
	@Override
	public void addCarShoes(Car car) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.save(car);
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.CarDao#deteteCarShoes(int)
	 */
	@Override
	public void deteteCarShoes(int cid) {
		Hibernateutil.getStartHibernate();
		Transaction tran = Hibernateutil.session.beginTransaction();
		try{
			Car car = (Car) Hibernateutil.session.get(Car.class,cid);
			Hibernateutil.session.delete(car);
			tran.commit();
		}catch(HibernateException e){
			e.printStackTrace();
			tran.rollback();
		}finally{
			Hibernateutil.getClose();
		}

	}

	/* (non-Javadoc)
	 * @see com.huanglin.pro.dao.CarDao#listCarShoes()
	 */
	@Override
	public List<Car> listCarShoes() {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		List<Car> listCar = null;
		try {
			listCar = (List<Car>) Hibernateutil.session.createQuery(SQL_CAR_LOAD).list();
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
		return listCar;
	}

	@Override
	public void updateCar( Car car) {
		Hibernateutil.getStartHibernate();
		Transaction trans = Hibernateutil.session.beginTransaction();
		try {
			Hibernateutil.session.saveOrUpdate(car);
			trans.commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			trans.rollback();
		}finally{
			Hibernateutil.getClose();
		}
	}

}
