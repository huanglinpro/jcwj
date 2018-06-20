/**
 * 
 */
package com.huanglin.pro.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author huanglin
 * 
 */
public class User extends Base {

	// public static int tutoid = 10;
	private int userId;
	private String userName;
	private String userRealName;
	private String singnPress;
	private String userPhone;
	private String userAddress;
	private char userPow = 't';
	private Date userDate = new Date();
	private String payPass;

	private Set<Car> cart = new HashSet<Car>();
	private Set<Order> order = new HashSet<Order>();

	public Set<Order> getOrder() {
		return order;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public String getSingnPress() {
		return singnPress;
	}

	public void setSingnPress(String singnPress) {
		this.singnPress = singnPress;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public char getUserPow() {
		return userPow;
	}

	public void setUserPow(char userPow) {
		this.userPow = userPow;
	}

	public Date getUserDate() {
		return userDate;
	}

	public void setUserDate(Date userDate) {
		this.userDate = userDate;
	}

	public String getPayPass() {
		return payPass;
	}

	public void setPayPass(String payPass) {
		this.payPass = payPass;
	}

	public Set<Car> getCart() {
		return cart;
	}

	public void setCart(Set<Car> cart) {
		this.cart = cart;
	}

	public void setOrder(Set<Order> order) {
		this.order = order;
	}

	public User() {
		int flag = 0;
		for (int i = 0; i <= 100; i++) {
			flag = new Random().nextInt(9999);
			if (flag < 13) {
				flag += 12;
			}
//			System.out.println(flag);
		}
		this.userId = flag;
		
//		this.userPow = 'f';
	}
	

}
