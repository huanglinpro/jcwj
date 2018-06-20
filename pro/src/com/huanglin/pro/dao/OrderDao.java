package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Order;

public interface OrderDao {
	
	void addOrder(Order order);
	void delete(int oid);
	void updateOrder(Order order);
	List<Order> loadAllOrder();
	Order getorderById(int oid);
}
