package com.zx.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.pojo.TreeMenu;
import com.zx.dao.UserDao;
import com.zx.pojo.Users;
import com.zx.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao userDao;
	public HttpServletRequest request(HttpServletRequest request){
		return request;
	}
	public Users login(Users user) {
		Users user2 = null;
		user2 = userDao.findUser(user);
		if(user2 != null){
			System.out.println(user2.getRealname());
			return user2;
		}else
			System.out.println("我是空的");
		return null;
	}

	public List<Map<String, String>> getTreeMenuByUserId(Integer userid) {
		List<Map<String, String>> list2 = new ArrayList<Map<String, String>>();
		List<TreeMenu> list = userDao.findTreeById(userid);
		System.out.println(list.size()+"list.size()");
		for (TreeMenu goodstype : list) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("id", goodstype.getTreeMenuID() + "");
			map.put("pId", goodstype.getParentID()+"");
			map.put("name", goodstype.getTitle());
			map.put("url", goodstype.getUrl());
			map.put("target", "rightFrame");
			if(goodstype.getParentID()==0){
				map.put("open", "true");
			}
			list2.add(map);
		}
		return list2;
	}
	/**
	 * 根据用户id查找对应的审批人，只能有一个
	 * @param userid
	 * @return
	 */
	public Users getNextBQ(Users user) {
		/*if(user.getPosition() == "1" ){
			
		}*/
		System.out.println(user.getPosition()+"职位");
		System.out.println(user.getAbteilungid()+"部门id");
		List<Users> user2 = userDao.selByPar(user);
		return user2.get(0);
	}
		
	

}
