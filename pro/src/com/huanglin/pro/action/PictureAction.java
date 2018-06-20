package com.huanglin.pro.action;

import java.util.List;

import com.huanglin.pro.dao.PictureDao;
import com.huanglin.pro.dao.PictureDaoImpl;
import com.huanglin.pro.domain.Picture;

public class PictureAction {

	private Picture picture;
	private List<Picture> listpic;

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	public List<Picture> getListpic() {
		return listpic;
	}

	public void setListpic(List<Picture> listpic) {
		this.listpic = listpic;
	}

	public PictureAction() {
	}

	public String listAllPic() {
		PictureDao pd = new PictureDaoImpl();
		this.listpic = (List<Picture>) pd.listPicture();
		return "list_all_pic";
	}

	public String addPic() {
		PictureDao pd = new PictureDaoImpl();
		pd.addPicture(this.picture);
		return "add_pic";
	}

	public String delPic() {
		PictureDao pd = new PictureDaoImpl();
		pd.detetePicture(this.picture.getpId());
		return "delpic";
	}
	

	


}
