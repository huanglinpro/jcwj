package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Car;
import com.huanglin.pro.domain.Shoes;

public interface CarDao {
	
	void addCarShoes( Car car);
	void deteteCarShoes(int cid);
	List<Car> listCarShoes();
	void updateCar( Car car);
	

}
