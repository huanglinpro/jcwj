/**
 * 
 */
package com.huanglin.pro.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.huanglin.pro.dao.MessageDao;
import com.huanglin.pro.dao.MessageDaoImpl;
import com.huanglin.pro.domain.Message;

/**
 * @author lenovo
 * 
 */
public class MessageAction {

	private Message msg;
	private List<Message> listmsg = new ArrayList<Message>();

	/**
	 * 
	 */

	public MessageAction() {
		// TODO Auto-generated constructor stub
	}

	public Message getMsg() {
		return msg;
	}

	public void setMsg(Message msg) {
		this.msg = msg;
	}

	public List<Message> getListmsg() {
		return listmsg;
	}

	public void setListmsg(List<Message> listmsg) {
		this.listmsg = listmsg;
	}
	
	public String listMessage(){
		MessageDao md = new MessageDaoImpl();
		this.listmsg = (List<Message>) md.listMessage();
		return "listall";
	}
	
	public String listUnMes(){
		MessageDao md = new MessageDaoImpl();
		this.listmsg = (List<Message>) md.listMessage();
		return "listallun";
	}
	
	public String delMes(){
		MessageDao md = new MessageDaoImpl();
		md.deteteMessage(this.msg.getmId());
		return "delmes";
	}
	
	public String updatePage(){
		MessageDao md = new MessageDaoImpl();
		this.msg = (Message) md.findByid(msg.getmId());
		return "uppage";
	}
	
	public String updateMes(){
		MessageDao md = new MessageDaoImpl();
		this.msg.setmRDate(new Date());
		md.updateMes(this.msg);
		
		return "updatemes";
	}

}
