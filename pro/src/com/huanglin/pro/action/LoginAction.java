/**
 * 
 */
package com.huanglin.pro.action;

import java.util.List;
import java.util.Map;

import com.huanglin.pro.dao.AdmDao;
import com.huanglin.pro.dao.AdmDaoImpl;
import com.huanglin.pro.dao.NoticeDao;
import com.huanglin.pro.dao.NoticeDaoImpl;
import com.huanglin.pro.dao.PictureDao;
import com.huanglin.pro.dao.PictureDaoImpl;
import com.huanglin.pro.dao.ShoesDao;
import com.huanglin.pro.dao.ShoesDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.Notice;
import com.huanglin.pro.domain.Picture;
import com.huanglin.pro.domain.Shoes;
import com.huanglin.pro.domain.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lenovo
 * 
 */
public class LoginAction extends ActionSupport {

	// 管理员登录
	private String admName = null;
	private String passWoeld = null;
	// 用户登录
	private String userLogName = null;
	private String userLogPress = null;
	private String userstate = "no";
	private Shoes shoes;
	private List<Shoes> slist;
	private List<Picture> lispic = null;
	private List<Notice> fList = null;
	private Picture picture = null;
	private Notice fNotice;

	public List<Picture> getLispic() {
		return lispic;
	}

	public void setLispic(List<Picture> lispic) {
		this.lispic = lispic;
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

	public Notice getfNotice() {
		return fNotice;
	}

	public void setfNotice(Notice fNotice) {
		this.fNotice = fNotice;
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

	public String getUserstate() {
		return userstate;
	}

	public void setUserstate(String userstate) {
		this.userstate = userstate;
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

	public String getAdmName() {
		return admName;
	}

	public void setAdmName(String admName) {
		this.admName = admName;
	}

	public String getPassWoeld() {
		return passWoeld;
	}

	public void setPassWoeld(String passWoeld) {
		this.passWoeld = passWoeld;
	}

	/**
	 * 
	 */
	public LoginAction() {
		// TODO Auto-generated constructor stub
	}

	// 管理员登录
	public String loginSys() {
		Boolean flog = false;
		AdmDao ad = new AdmDaoImpl();
		List<Adm> list = (List<Adm>) ad.loadAll();
		for (Adm a : list) {
			if (a.getAdmName().equals(this.admName)
					&& a.getAdmPress().equals(this.passWoeld)) {
				flog = true;
				break;
			}
		}
		if (flog)
			return "login_sus";
		else
			return "login_fal";

	}

	// 用户登录
	public String userLogin() {
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
				break;
			}
		}

		if (fg) {
			ShoesDao sd = new ShoesDaoImpl();
			NoticeDao nd = new NoticeDaoImpl();
			PictureDao pd = new PictureDaoImpl();
			this.slist = (List<Shoes>) sd.loadAll();
			this.lispic = (List<Picture>) pd.listPicture();
			this.fList = (List<Notice>) nd.listNotice();
			return "user_log_sus";
		} else
			return "back";
	}

	public String inPage() {
		this.userstate = "no";
		return "inpage";
	}

	/*
	 * 用户退出登录
	 */

	public String userLogOut() {

		Map<String, Object> ac = ActionContext.getContext().getSession();
		ac.remove("username");
		ac.remove("userid");
		ac.remove("userPaypass");
		ShoesDao sd = new ShoesDaoImpl();
		NoticeDao nd = new NoticeDaoImpl();
		PictureDao pd = new PictureDaoImpl();
		this.slist = (List<Shoes>) sd.loadAll();
		this.lispic = (List<Picture>) pd.listPicture();
		this.fList = (List<Notice>) nd.listNotice();

		return "userlogout";
	}

}
