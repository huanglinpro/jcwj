package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Receiver;


public interface ReceiverDao {

	void addShoes(Receiver receiver);
	void delete(int recid);
	void updateShoes(Receiver receiver);
	Receiver findById(int recid);
	List<Receiver> loadAll();
}
