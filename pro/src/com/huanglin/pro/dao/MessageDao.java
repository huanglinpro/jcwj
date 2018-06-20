/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import org.hibernate.sql.Update;

import com.huanglin.pro.domain.Message;

/**
 * @author lenovo
 *
 */
public interface MessageDao  {
	
	void addMessage( Message mes);
	void deteteMessage(int mid);
	List<Message> listMessage();
	Message findByid(int mid);
	void updateMes(Message mes);
	
}
