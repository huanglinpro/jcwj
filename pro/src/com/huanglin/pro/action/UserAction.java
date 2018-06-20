/**
 * 
 */
package com.huanglin.pro.action;

import java.util.ArrayList;
import java.util.List;

import com.huanglin.pro.dao.NoticeDao;
import com.huanglin.pro.dao.NoticeDaoImpl;
import com.huanglin.pro.dao.PictureDao;
import com.huanglin.pro.dao.PictureDaoImpl;
import com.huanglin.pro.dao.ShoesDao;
import com.huanglin.pro.dao.ShoesDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Notice;
import com.huanglin.pro.domain.Picture;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;

/**
 * @author lenovo
 * 
 */
public class UserAction extends BaseAction {

	private User user;
	private Shoes shoes = null;
	private Notice fNotice = null;
	private Picture picture = null;
	private List<Shoes> slist = null;
	private List<Notice> fList = null;
	private List<Picture> lispic = null;
	private List<User> userlist = new ArrayList<User>();
	private int searchinfo;

	public int getSearchinfo() {
		return searchinfo;
	}

	public void setSearchinfo(int searchinfo) {
		this.searchinfo = searchinfo;
	}

	public Shoes getShoes() {
		return shoes;
	}

	public void setShoes(Shoes shoes) {
		this.shoes = shoes;
	}

	public Notice getfNotice() {
		return fNotice;
	}

	public void setfNotice(Notice fNotice) {
		this.fNotice = fNotice;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public List<Shoes> getSlist() {
		return slist;
	}

	public void setSlist(List<Shoes> slist) {
		this.slist = slist;
	}

	public List<Notice> getfList() {
		return fList;
	}

	public void setfList(List<Notice> fList) {
		this.fList = fList;
	}

	public List<Picture> getLispic() {
		return lispic;
	}

	public void setLispic(List<Picture> lispic) {
		this.lispic = lispic;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<User> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}

	public UserAction() {
		super();
	}

	/*
	 * 增加一个用户
	 */
	public String addUser() {

		UserDao ud = new UserDaoImpl();
		ShoesDao sd = new ShoesDaoImpl();
		NoticeDao nd = new NoticeDaoImpl();
		PictureDao pd = new PictureDaoImpl();

		this.lispic = (List<Picture>) pd.listPicture();
		this.fList = (List<Notice>) nd.listNotice();
		this.slist = (List<Shoes>) sd.loadAll();
		ud.addUser(user);

		return "add_user";
	}

	/*
	 * 列出所有的用户
	 */
	public String listUser() {

		UserDao ud = new UserDaoImpl();
		this.userlist = (List<User>) ud.loadAll();

		return "list_user";
	}

	/*
	 * 删除一个用户
	 */
	public String deleteUser() {
		UserDao ud = new UserDaoImpl();
		ud.delete(user.getUserId());

		return "deleteuser";
	}

	/*
	 * 查询一个用户
	 */
	public String findUser() {
		UserDao ud = new UserDaoImpl();
//		ud.findById(user.getUserId());
		this.user = (User) ud.findById(this.searchinfo);
		this.userlist.add(this.user);
		return "finduser";
	}

	/*
	 * 更新用户回填
	 */
	public String updateUser() {
		UserDao ud = new UserDaoImpl();
		this.user = ud.findById(user.getUserId());

		return "updateuser";

	}

	/*
	 * update user information
	 */
	public String updateInfo() {

		UserDao ud = new UserDaoImpl();
		ud.updateUser(user);

		return "updateinfo";
	}

	public String getByid(int id) {

		UserDao ud = new UserDaoImpl();
		ud.findById(id);
		return "getuser";
	}

	public String listBack() {
		UserDao ud = new UserDaoImpl();
		this.userlist = (List<User>) ud.loadAll();
		return "listback";
	}
	public String listUnBack() {
		UserDao ud = new UserDaoImpl();
		this.userlist = (List<User>) ud.loadAll();
		return "listunback";
	}
	public String bkUpPage(){
		UserDao ud = new UserDaoImpl();
		this.user = (User) ud.findById(user.getUserId());
		return "bkuppage";
	}
	public String fixBkUpPage(){
		UserDao ud = new UserDaoImpl();
		this.user = (User) ud.findById(user.getUserId());
		return "fixbkuppage";
	}
	
	
	public String fixPow(){
		UserDao ud = new UserDaoImpl();
		User us = (User) ud.findById(user.getUserId());
		us.setUserPow('f');
		ud.updateUser(us);
		return "fixpow";
	}
	
	public String finRight(){
		UserDao ud = new UserDaoImpl();
//		User us = (User) ud.findById(user.getUserId());
//		us.setUserPow('t');
		ud.updateUser(user);
		return "fixright";
	}
	public String finUNRight(){
		UserDao ud = new UserDaoImpl();
		ud.updateUser(user);
		return "finUNRight";
	}

}
