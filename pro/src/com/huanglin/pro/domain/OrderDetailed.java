/**
 * 
 */
package com.huanglin.pro.domain;

/**
 * @author lenovo
 * 
 */
public class OrderDetailed {

	/**
	 * 
	 */
	private int odId;
	private int fkShoes;
	private int fkOrder;
	private Shoes shoes;
	private Order order;

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public Shoes getShoes() {
		return shoes;
	}

	public void setShoes(Shoes shoes) {
		this.shoes = shoes;
	}

	public int getOdId() {
		return odId;
	}

	public void setOdId(int odId) {
		this.odId = odId;
	}

	public int getFkShoes() {
		return fkShoes;
	}

	public void setFkShoes(int fkShoes) {
		this.fkShoes = fkShoes;
	}

	public int getFkOrder() {
		return fkOrder;
	}

	public void setFkOrder(int fkOrder) {
		this.fkOrder = fkOrder;
	}

	public OrderDetailed() {
		// TODO Auto-generated constructor stub
	}

}
