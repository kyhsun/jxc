package com.zx.dao;

import org.apache.ibatis.annotations.Param;

import com.zx.pojo.Leavebill;

public interface LeaveDao {
	/**
	 * 根据id查询对应的请假条
	 * @param id
	 * @return
	 */
	Leavebill findLeaveBillById(@Param("id")int id);
	/**
	 * 根据请假条id修改请假条状态为1
	 * @param leavebillid
	 */
	void upStateById(Integer leavebillid);
	

}
