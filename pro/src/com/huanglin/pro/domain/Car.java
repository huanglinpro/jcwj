/**
 * 
 */
package com.huanglin.pro.domain;

/**
 * @author lenovo
 * 
 */
public class Car {

	/**
	 * huanglin
	 */
	private int cId;
	private String cName;
	private String cUrl;;
	private String cColor;
	private String cStyle;
	private int cNumb;
	private double cPrice;
	private double cSize;
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcUrl() {
		return cUrl;
	}

	public void setcUrl(String cUrl) {
		this.cUrl = cUrl;
	}

	public String getcColor() {
		return cColor;
	}

	public void setcColor(String cColor) {
		this.cColor = cColor;
	}

	public String getcStyle() {
		return cStyle;
	}

	public void setcStyle(String cStyle) {
		this.cStyle = cStyle;
	}

	public int getcNumb() {
		return cNumb;
	}

	public void setcNumb(int cNumb) {
		this.cNumb = cNumb;
	}

	public double getcPrice() {
		return cPrice;
	}

	public void setcPrice(double cPrice) {
		this.cPrice = cPrice;
	}

	public double getcSize() {
		return cSize;
	}

	public void setcSize(double cSize) {
		this.cSize = cSize;
	}

	public Car() {
		// TODO Auto-generated constructor stub
	}

}
