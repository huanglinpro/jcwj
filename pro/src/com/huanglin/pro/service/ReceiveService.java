package com.huanglin.pro.service;

import java.util.List;

import com.huanglin.pro.dao.ReceiveDaoImpl;
import com.huanglin.pro.dao.ReceiverDao;
import com.huanglin.pro.domain.Receiver;

public class ReceiveService {

	public List<Receiver> listReceiver(){
		List<Receiver>lisrec = null;
		ReceiverDao rd = new ReceiveDaoImpl();
		lisrec = (List<Receiver>) rd.loadAll();
		return lisrec;
	}

}
