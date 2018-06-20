/**
 * 
 */
package com.huanglin.pro.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.websocket.Session;

import org.apache.struts2.dispatcher.Parameter;

import com.huanglin.pro.dao.NoticeDao;
import com.huanglin.pro.dao.NoticeDaoImpl;
import com.huanglin.pro.dao.OrderDao;
import com.huanglin.pro.dao.OrderDaoImpl;
import com.huanglin.pro.dao.PictureDao;
import com.huanglin.pro.dao.PictureDaoImpl;
import com.huanglin.pro.dao.ShoesDao;
import com.huanglin.pro.dao.ShoesDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Notice;
import com.huanglin.pro.domain.Order;
import com.huanglin.pro.domain.Picture;
import com.huanglin.pro.domain.Receiver;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lenovo
 * 
 */
public class ShoesAction extends ActionSupport {

	private String color;
	private Integer size;
	private String shoesInfo;
	private int number;
	private String paypass = null;
	private String searchinfo;
	private Receiver receiver = null;
	private Shoes shoes = null;
	private Notice fNotice;
	private Picture picture = null;
	private Order order = null;
	private User user = null;
	private List<Shoes> slist = new ArrayList<Shoes>();
	private List<Notice> fList = null;
	private List<Receiver> lstRec = null;
	private List<Picture> lispic = null;
	private List<Order> orderlist = null;
	private String userLogName;
	private String userLogPress;

	public String getShoesInfo() {
		return shoesInfo;
	}

	public void setShoesInfo(String shoesInfo) {
		this.shoesInfo = shoesInfo;
	}

	public String getSearchinfo() {
		return searchinfo;
	}

	public void setSearchinfo(String searchinfo) {
		this.searchinfo = searchinfo;
	}

	public String getUserLogName() {
		return userLogName;
	}

	public void setUserLogName(String userLogName) {
		this.userLogName = userLogName;
	}

	public String getUserLogPress() {
		return userLogPress;
	}

	public void setUserLogPress(String userLogPress) {
		this.userLogPress = userLogPress;
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

	public Shoes getShoes() {
		return shoes;
	}

	public void setShoes(Shoes shoes) {
		this.shoes = shoes;
	}

	public List<Shoes> getSlist() {
		return slist;
	}

	public void setSlist(List<Shoes> slist) {
		this.slist = slist;
	}

	public Notice getfNotice() {
		return fNotice;
	}

	public void setfNotice(Notice fNotice) {
		this.fNotice = fNotice;
	}

	public List<Notice> getfList() {
		return fList;
	}

	public void setfList(List<Notice> fList) {
		this.fList = fList;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public List<Picture> getLispic() {
		return lispic;
	}

	public void setLispic(List<Picture> lispic) {
		this.lispic = lispic;
	}

	public List<Receiver> getLstRec() {
		return lstRec;
	}

	public void setLstRec(List<Receiver> lstRec) {
		this.lstRec = lstRec;
	}

	public Receiver getReceiver() {
		return receiver;
	}

	public void setReceiver(Receiver receiver) {
		this.receiver = receiver;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Integer getSize() {
		return size;
	}

	public void setSize(Integer size) {
		this.size = size;
	}

	public String getPaypass() {
		return paypass;
	}

	public void setPaypass(String paypass) {
		this.paypass = paypass;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public ShoesAction() {

	}

	/*
	 * 
	 */
	public String addShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		sd.addShoes(this.shoes);
		return "add_shoes";
	}

	/*
	 * 
	 */
	public String listShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		slist = (List<Shoes>) sd.loadAll();
		return "list_shoes";
	}

	/*
	 * 
	 */
	public String deleteShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		sd.delete(shoes.getShoesId());
		return "deleteshoes";
	}

	/*
	 * 
	 */
	public String findShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		sd.findById(shoes.getShoesId());
		return "findshoes";
	}

	/*
	 * 到更新鞋子的界面
	 */
	public String toUpdatePage() {
		ShoesDao sd = new ShoesDaoImpl();
		this.shoes = (Shoes) sd.findById(shoes.getShoesId());
		return "update_page";
	}

	/**
	 * 更新鞋子信息
	 * 
	 * @return
	 */
	public String updateShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		sd.updateShoes(shoes);
		return "update";
	}

	/**
	 * 进入主页面
	 * 
	 * @return
	 */
	public String frontShoes() {
		ShoesDao sd = new ShoesDaoImpl();
		NoticeDao nd = new NoticeDaoImpl();
		PictureDao pd = new PictureDaoImpl();
		this.lispic = (List<Picture>) pd.listPicture();
		this.fList = (List<Notice>) nd.listNotice();
		this.slist = (List<Shoes>) sd.loadAll();
		return "showshoes";
	}

	/**
	 * 进入订单详情页面
	 * 
	 * @return
	 */
	public String orderDels() {
		Map<String, Object> s = ActionContext.getContext().getSession();
		if (!s.isEmpty()) {
			ShoesDao sd = new ShoesDaoImpl();
			this.shoes = (Shoes) sd.findById(shoes.getShoesId());
			return "orderdels";
		} else {
			return "rsingin";
		}
	}

	/*
	 * 列出鞋子详情信息
	 */
	public String shoesDetial() {
		ShoesDao sd = new ShoesDaoImpl();
		this.shoes = (Shoes) sd.findById(shoes.getShoesId());
		System.out.println(shoes.getShoesId());
		return "shoedetial";
	}

	public String orderList() {
		ShoesDao sd = new ShoesDaoImpl();
		OrderDao od = new OrderDaoImpl();
		UserDao ud = new UserDaoImpl();

		Shoes sho = (Shoes) sd.findById(this.shoes.getShoesId());

		Order order = new Order();

		Map<String, Object> ses = ActionContext.getContext().getSession();
		int id = (Integer) ses.get("userid");
		User use = (User) ud.findById(id);

		use.setUserId(id);
		order.setOrcolor(this.color);
		order.setOrDatetime(new Date());
		order.setOrNumber(this.number);
		order.setOrprice(sho.getShoesPrise());
		order.setOrUrl(sho.getShoesUrl());
		order.setOrName(sho.getShoesName());
		order.setOrsize(this.size);
		order.setOrPayState('t');
		order.setOrreceiverState('a');
		// System.out.println(id);
		System.out.println(use.getUserName());

		use.getOrder().add(order);
		order.setUser(use);
		od.addOrder(order);
		sho.setNub(sho.getNub() - 1);
		sd.updateShoes(sho);
		return "orderlist";

	}

	public String showOrdeList() {
		OrderDao od = new OrderDaoImpl();
		this.orderlist = (List<Order>) od.loadAllOrder();
		return "showorderlist";
	}

	public String resignIn() {
		Boolean fg = false;
		UserDao ud = new UserDaoImpl();
		List<User> listu = (List<User>) ud.loadAll();

		for (User u : listu) {
			if (u.getUserName().equals(this.userLogName)
					&& u.getSingnPress().equals(this.userLogPress)) {
				Map<String, Object> usersession = ActionContext.getContext()
						.getSession();
				usersession.put("username", u.getUserName());
				usersession.put("userid", u.getUserId());
				usersession.put("userPaypass", u.getPayPass());
				fg = true;
				this.user = (User) u;
				break;
			}
		}

		if (fg) {
			ShoesDao sd = new ShoesDaoImpl();
			this.shoes = (Shoes) sd.findById(shoes.getShoesId());
			return "orderdels";
		} else
			return "rsingin";
	}

	public String scarchSches() {
		ShoesDao sd = new ShoesDaoImpl();
		int sid = -1;
		List<Shoes> li = (List<Shoes>) sd.loadAll();
		try {
			sid = Integer.parseInt(this.searchinfo);
		} catch (Exception e) {
		}

		for (Shoes sh : li) {
			if (sh.getShoesId() == sid
					|| sh.getShoesName().equals(this.searchinfo)) {
				slist.add(sh);
				break;
			}
		}

		return "list_shoes";
	}
	
	public String SecrchShoes(){
		ShoesDao sd = new ShoesDaoImpl();
		List<Shoes> ils = (List<Shoes>) sd.loadAll();
		System.out.println(shoesInfo);
		for(Shoes ss : ils ){
			if(ss.getShoesName().equals(this.shoesInfo)){
				this.slist.add(ss);
			}
		}
		
		return "search";
	}

}
