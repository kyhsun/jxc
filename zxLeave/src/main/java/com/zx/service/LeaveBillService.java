package com.zx.service;

import java.util.List;

import com.zx.pojo.Leavebill;
import com.zx.pojo.Users;

public interface LeaveBillService {
	/**
	 * 根据用户id查找属于自己的请假条
	 * @param i 用户id
	 * @return
	 */
	List<Leavebill> getLeaveById(int i);
	/**
	 * 添加请假条
	 * @param l 请假条
	 * @return 添加成功返回true，否则flase
	 */
	boolean addLeaveBill(Leavebill l);
	/**
	 * 开始请假
	 * @param lb 请假单id
	 * @param user 请假人
	 */


}
