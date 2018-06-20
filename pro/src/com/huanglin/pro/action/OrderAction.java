package com.huanglin.pro.action;

import java.util.List;

import com.huanglin.pro.dao.OrderDao;
import com.huanglin.pro.dao.OrderDaoImpl;
import com.huanglin.pro.domain.Order;
import com.huanglin.pro.domain.Shoes;
import com.opensymphony.xwork2.ActionSupport;

public class OrderAction extends ActionSupport {

	public OrderAction() {
		// TODO Auto-generated constructor stub
	}

	private Order order;
	private List<Order> orderlist = null;
	private Shoes shoes;
	private String size;
	private String color;
	private Integer number;
	private String paypass;

	public String getPaypass() {
		return paypass;
	}

	public void setPaypass(String paypass) {
		this.paypass = paypass;
	}

	public Shoes getShoes() {
		return shoes;
	}

	public void setShoes(Shoes shoes) {
		this.shoes = shoes;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Integer getNumber() {
		return number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public List<Order> getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(List<Order> orderlist) {
		this.orderlist = orderlist;
	}

	public String addOrder() {
		if ((this.paypass.toString().trim()).equals("123456"))
			return "addorder";
		else
			return "backpay";
	}

	public String signReceive() {
		OrderDao od = new OrderDaoImpl();
		Order ord = (Order) od.getorderById(this.order.getOrId());
		ord.setOrreceiverState('c');
		od.updateOrder(ord);
		return "signin";
	}

	public String listAllOrder() {
		OrderDao od = new OrderDaoImpl();
		this.orderlist = (List<Order>) od.loadAllOrder();
		return "listorder";
	}
	
	public String cancleOrder(){
		OrderDao od = new OrderDaoImpl();
		Order o = (Order) od.getorderById(this.order.getOrId());
		o.setOrState('f');
		od.updateOrder(o);
		return "cancle";
	}
}
