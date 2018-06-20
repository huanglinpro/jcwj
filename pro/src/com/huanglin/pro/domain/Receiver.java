/**
 * 
 */
package com.huanglin.pro.domain;

/**
 * @author lenovo
 * 
 */
public class Receiver {

	/**
	 * haunglin
	 */
	private int rId;
	private String rName;
	private String rAdderss;
	private String rEmail;
	private String rPhone;
	private String rPost;
	private int fkUser;
	private User user;
	private Order order;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return user;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getrAdderss() {
		return rAdderss;
	}

	public void setrAdderss(String rAdderss) {
		this.rAdderss = rAdderss;
	}

	public String getrEmail() {
		return rEmail;
	}

	public void setrEmail(String rEmail) {
		this.rEmail = rEmail;
	}

	public String getrPhone() {
		return rPhone;
	}

	public void setrPhone(String rPhone) {
		this.rPhone = rPhone;
	}

	public String getrPost() {
		return rPost;
	}

	public void setrPost(String rPost) {
		this.rPost = rPost;
	}

	public int getFkUser() {
		return fkUser;
	}

	public void setFkUser(int fkUser) {
		this.fkUser = fkUser;
	}

	public Receiver() {
		// TODO Auto-generated constructor stub
	}

}
