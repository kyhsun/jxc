package com.zx.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.zx.pojo.Leavebill;
import com.zx.pojo.Users;

public interface UserService {
	/**
	 * 用户登录
	 * @param user 页面传入的用户对象
	 * @return 用户登录成功则返回true
	 */
	Users login(Users user);
	/**
	 * 查找对应的权限
	 * @param userid
	 * @return
	 */
	List<Map<String, String>> getTreeMenuByUserId(Integer userid);


}
