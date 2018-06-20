/**
 * 
 */
package com.huanglin.pro.dao;

import java.util.List;

import com.huanglin.pro.domain.Notice;

/**
 * @author lenovo
 *
 */
public interface NoticeDao {
	void addNotice( Notice notice);
	void deteteNotice(int nid);
	List<Notice> listNotice();
	List<Notice> listAllNotice();
	Notice findNoticeByid(int nid);
	void updateNotice(Notice notice);
}
