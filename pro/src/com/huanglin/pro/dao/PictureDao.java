package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Picture;

public interface PictureDao {
	void addPicture( Picture picture);
	void detetePicture(int pid);
	List<Picture> listPicture();
}	
