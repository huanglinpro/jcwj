package com.huanglin.pro.action;

import java.util.Date;
import java.util.List;

import com.huanglin.pro.dao.NoticeDao;
import com.huanglin.pro.dao.NoticeDaoImpl;
import com.huanglin.pro.domain.Notice;
import com.mysql.fabric.xmlrpc.base.Data;
import com.opensymphony.xwork2.ActionSupport;

public class NoticeAction extends ActionSupport {

	private Notice notice;
	private List<Notice> nlist = null;

	public Notice getNotice() {
		return notice;
	}

	public void setNotice(Notice notice) {
		this.notice = notice;
	}

	public List<Notice> getNlist() {
		return nlist;
	}

	public void setNlist(List<Notice> nlist) {
		this.nlist = nlist;
	}

	public NoticeAction() {
		// TODO Auto-generated constructor stub
	}

	public String showNotice() {
		NoticeDao nd = new NoticeDaoImpl();
		this.nlist = (List<Notice>) nd.listNotice();
		return "show_notice";
	}
	
	public String ShoeAllNotice(){
		NoticeDao nd = new NoticeDaoImpl();
		this.nlist = (List<Notice>) nd.listAllNotice();
		return "show_all_notice";
	}

	public String addNotice() {
		NoticeDao nod = new NoticeDaoImpl();
		this.notice.setNdate(new Date());
		nod.addNotice(this.notice);
		return "add_notice";
	}

	 public String deleteNotice(){
		 NoticeDao nd = new NoticeDaoImpl();
		 nd.deteteNotice(notice.getId());
		 return "del_notice";
	 }
	 
	 public String updateNotice(){
		 NoticeDao nd = new NoticeDaoImpl();
		 nd.updateNotice(this.notice);
		 return "upda_notice";
	 }
	 
	 public String updateNotPage(){
		 NoticeDao nd = new NoticeDaoImpl();
		 this.notice =(Notice) nd.findNoticeByid(notice.getId());
		 return "update_not_page";
	 }

}