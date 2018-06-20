/**
 * 
 */
package com.huanglin.pro.domain;

import java.util.Date;

/**
 * @author lenovo
 * 
 */
public class Message {

	/**
	 * 
	 */
	private int mId;
	private Date mWDate;
	private Date mRDate;
	private String mWName;
	private String mRName;
	private String mWInfo;
	private String mRInfo;
	private char mState;

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public Date getmWDate() {
		return mWDate;
	}

	public void setmWDate(Date mWDate) {
		this.mWDate = mWDate;
	}

	public Date getmRDate() {
		return mRDate;
	}

	public void setmRDate(Date mRDate) {
		this.mRDate = mRDate;
	}

	public String getmWName() {
		return mWName;
	}

	public void setmWName(String mWName) {
		this.mWName = mWName;
	}

	public String getmRName() {
		return mRName;
	}

	public void setmRName(String mRName) {
		this.mRName = mRName;
	}

	public String getmWInfo() {
		return mWInfo;
	}

	public void setmWInfo(String mWInfo) {
		this.mWInfo = mWInfo;
	}

	public String getmRInfo() {
		return mRInfo;
	}

	public void setmRInfo(String mRInfo) {
		this.mRInfo = mRInfo;
	}

	public char getmState() {
		return mState;
	}

	public void setmState(char mState) {
		this.mState = mState;
	}

	public Message() {
		// TODO Auto-generated constructor stub
	}

}
