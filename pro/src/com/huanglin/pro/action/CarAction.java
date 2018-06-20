/**
 * 
 */
package com.huanglin.pro.action;

import java.util.List;

import com.huanglin.pro.domain.Car;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lenovo
 *
 */
public class CarAction extends ActionSupport {
	
	private Car car;
	private List<Car> listCar;
	
	public Car getCar() {
		return car;
	}



	public void setCar(Car car) {
		this.car = car;
	}



	public List<Car> getListCar() {
		return listCar;
	}



	public void setListCar(List<Car> listCar) {
		this.listCar = listCar;
	}



	/**
	 * huanglin
	 */
	public CarAction() {
		// TODO Auto-generated constructor stub
	}

}
