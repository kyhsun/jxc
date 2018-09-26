package com.zx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zx.pojo.TreeMenu;
import com.zx.pojo.Users;

public interface UserDao {

	Users findUser(@Param("user") Users user);
	/**
	 * 根据用户id查询用户权限
	 * @param userid
	 * @return
	 */
	
	List<TreeMenu> findTreeById(@Param("id") Integer userid);
	
	/**
	 * 使用动态sql，查询审批人
	 * @param userid 用户id
	 * @param abteilungid 部门id
	 * @return 审批人
	 */
	List<Users> selByPar(@Param("user")Users user);
	

}
