/**
 * 
 */
package com.huanglin.pro.domain;

import java.util.Date;

/**
 * @author lenovo
 * 
 */
public class Notice {
	private int id;
	private String title;
	private String info;
	private Date ndate;

	public Notice() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Date getNdate() {
		return ndate;
	}

	public void setNdate(Date ndate) {
		this.ndate = ndate;
	}

}
