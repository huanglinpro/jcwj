/**
 * 
 */
package com.huanglin.pro.action;

import java.util.List;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.huanglin.pro.dao.AdmDao;
import com.huanglin.pro.dao.AdmDaoImpl;
import com.huanglin.pro.dao.UserDao;
import com.huanglin.pro.dao.UserDaoImpl;
import com.huanglin.pro.domain.Adm;
import com.huanglin.pro.domain.User;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author lenovo
 * 
 */
public class AdmAction extends ActionSupport {

	private Adm adm;
	private List<Adm> admlist;
	private String admName;
	private String admpress;
	private String readmpress;
	private String mId;

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getReadmpress() {
		return readmpress;
	}

	public void setReadmpress(String readmpress) {
		this.readmpress = readmpress;
	}

	public String getAdmpress() {
		return admpress;
	}

	public void setAdmpress(String admpress) {
		this.admpress = admpress;
	}

	public String getAdmName() {
		return admName;
	}

	public void setAdmName(String admName) {
		this.admName = admName;
	}

	public Adm getAdm() {
		return adm;
	}

	public void setAdm(Adm adm) {
		this.adm = adm;
	}

	public List<Adm> getAdmlist() {
		return admlist;
	}

	public void setAdmlist(List<Adm> admlist) {
		this.admlist = admlist;
	}

	public AdmAction() {
		super();
	}

	/*
	 * 增加一个管理员
	 */
	public String addAdm() {

		AdmDao ad = new AdmDaoImpl();
		ad.addAdm(adm);

		return "add_user";
	}

	/*
	 * 列出所有的管理员
	 */
	public String listUser() {

		AdmDao ad = new AdmDaoImpl();
		this.admlist = (List<Adm>) ad.loadAll();

		return "list_user";
	}

	/*
	 * 删除一个管理员
	 */
	public String deleteUser() {
		AdmDao ad = new AdmDaoImpl();
		ad.delete(adm.getAdmId());

		return "deleteuser";
	}

	/*
	 * 查询一个管理员
	 */
	public String findUser() {
		AdmDao ad = new AdmDaoImpl();
		this.adm = ad.findById(adm.getAdmId());
		return "finduser";
	}

	/*
	 * 更新管理员回填
	 */
	public String updateUser() {
		AdmDao ad = new AdmDaoImpl();
//		for(Adm a :ad.loadAll()){
//			if(a.getAdmName().equals(this.adm.getAdmName())){
//				this.adm = (Adm) a;
//				break;
//			}
//		}
		this.adm = ad.findById(adm.getAdmId());
		return "updateuser";

	}

	/*
	 * update administrators information
	 */

	public String updateInfo() {

		AdmDao ad = new AdmDaoImpl();
		ad.updateAdm(adm);

		return "updateinfo";
	}

	public String findByname() {
		AdmDao ad = new AdmDaoImpl();
		for (Adm a : (List<Adm>) ad.loadAll()) {
			if (a.getAdmName().equals(this.admName)) {
				this.adm = (Adm) a;
				
				break;
			}
		}
		return "findbyname";
	}

	public String updatePass() {
		AdmDao ad = new AdmDaoImpl();
		this.adm = (Adm) ad.findById(adm.getAdmId());
		// upad.setAdmPress(this.admpress);
		// ad.updateAdm(upad);
		// return "updatePassInfo";
		return "uppress";
	}

	public String updatePassInfo() {

		AdmDao ad = new AdmDaoImpl();
		Adm upad = (Adm) ad.findById(Integer.parseInt(this.mId));
		upad.setAdmPress(this.admpress);
		ad.updateAdm(upad);
		return "updatePassInfo";

	}
	
	public String backHome(){
		return "backhome";
	}

}
