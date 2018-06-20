package com.huanglin.pro.domain;

import java.util.Random;

/**
 * @author huanglin
 *
 */

public class Shoes extends Base {
	private int shoesId;
	private String shoesName;
	private String ShoesUrl;
	private double shoesPrise;
	private Integer shoesSize;
	private String shoesColor;
	private char   shoesSex;
	private String shoesBrand;
	private String shoesStyle;
	private String shoesOrign;
	private Integer nub;
	
	public int getShoesId() {
		return shoesId;
	}

	public void setShoesId(int shoesId) {
		this.shoesId = shoesId;
	}


	public String getShoesName() {
		return shoesName;
	}


	public void setShoesName(String shoesName) {
		this.shoesName = shoesName;
	}


	public String getShoesUrl() {
		return ShoesUrl;
	}


	public void setShoesUrl(String shoesUrl) {
		ShoesUrl = shoesUrl;
	}


	public double getShoesPrise() {
		return shoesPrise;
	}


	public void setShoesPrise(double shoesPrise) {
		this.shoesPrise = shoesPrise;
	}


	public Integer getShoesSize() {
		return shoesSize;
	}


	public void setShoesSize(Integer shoesSize) {
		this.shoesSize = shoesSize;
	}


	public String getShoesColor() {
		return shoesColor;
	}


	public void setShoesColor(String shoesColor) {
		this.shoesColor = shoesColor;
	}


	public char getShoesSex() {
		return shoesSex;
	}


	public void setShoesSex(char shoesSex) {
		this.shoesSex = shoesSex;
	}


	public String getShoesBrand() {
		return shoesBrand;
	}


	public void setShoesBrand(String shoesBrand) {
		this.shoesBrand = shoesBrand;
	}


	public String getShoesStyle() {
		return shoesStyle;
	}


	public void setShoesStyle(String shoesStyle) {
		this.shoesStyle = shoesStyle;
	}


	public String getShoesOrign() {
		return shoesOrign;
	}


	public void setShoesOrign(String shoesOrign) {
		this.shoesOrign = shoesOrign;
	}


	public Integer getNub() {
		return nub;
	}


	public void setNub(Integer nub) {
		this.nub = nub;
	}


	public Shoes() {
	}
	
}
