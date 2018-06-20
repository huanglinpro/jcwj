/**
 * 
 */
package com.huanglin.pro.domain;

import java.util.Date;

/**
 * @author lenovo
 * 
 */
public class Order {

	/**
	 * huanglin
	 */
	private int orId;
	private String orName;
	private int orNumber;
	private int fkReceiver;
	private Date orDatetime;
	private double orprice;
	private char orPayState;
	private char orreceiverState;
	private int fkUser;
	private char orState;// 确认订单是否被取消
	private String orUrl;
	private String orcolor;
	private Integer orsize;
	private User user;
	private Receiver receiver;

	public int getOrId() {
		return orId;
	}

	public void setOrId(int orId) {
		this.orId = orId;
	}

	public String getOrName() {
		return orName;
	}

	public void setOrName(String orName) {
		this.orName = orName;
	}

	public int getOrNumber() {
		return orNumber;
	}

	public void setOrNumber(int orNumber) {
		this.orNumber = orNumber;
	}

	public int getFkReceiver() {
		return fkReceiver;
	}

	public void setFkReceiver(int fkReceiver) {
		this.fkReceiver = fkReceiver;
	}

	public Date getOrDatetime() {
		return orDatetime;
	}

	public void setOrDatetime(Date orDatetime) {
		this.orDatetime = orDatetime;
	}

	public double getOrprice() {
		return orprice;
	}

	public void setOrprice(double orprice) {
		this.orprice = orprice;
	}

	public char getOrPayState() {
		return orPayState;
	}

	public void setOrPayState(char orPayState) {
		this.orPayState = orPayState;
	}

	public char getOrreceiverState() {
		return orreceiverState;
	}

	public void setOrreceiverState(char orreceiverState) {
		this.orreceiverState = orreceiverState;
	}

	public int getFkUser() {
		return fkUser;
	}

	public void setFkUser(int fkUser) {
		this.fkUser = fkUser;
	}

	public char getOrState() {
		return orState;
	}

	public void setOrState(char orState) {
		this.orState = orState;
	}

	public String getOrUrl() {
		return orUrl;
	}

	public void setOrUrl(String orUrl) {
		this.orUrl = orUrl;
	}

	public String getOrcolor() {
		return orcolor;
	}

	public void setOrcolor(String orcolor) {
		this.orcolor = orcolor;
	}

	public Integer getOrsize() {
		return orsize;
	}

	public void setOrsize(Integer orsize) {
		this.orsize = orsize;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Receiver getReceiver() {
		return receiver;
	}

	public void setReceiver(Receiver receiver) {
		this.receiver = receiver;
	}

	public Order() {
		// TODO Auto-generated constructor stub
	}

}
