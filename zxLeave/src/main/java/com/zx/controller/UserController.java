package com.zx.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.chainsaw.Main;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.pojo.Leavebill;
import com.zx.pojo.Users;
import com.zx.service.UserService;

@Controller  
public class UserController {
	@Autowired
	private HttpServletRequest request;
	@Autowired
	UserService userServiceImpl;
	@RequestMapping("/login")
	public String login(Users user,HttpSession session){
		Users t = userServiceImpl.login(user);
		System.out.println(t);
		if(t != null){
			request.getSession().setAttribute("user",t );
//			session.setAttribute("user",t );
			return "redirect:jsp/main.jsp";
		}
		return "login";
	/*	return "forward:/bussness/addOrder";

		return "redirect:/index.jsp";*/
	}
	@RequestMapping("/left")
	@ResponseBody
	public List<Map<String, String>>  getTremu(HttpSession session){
/*	    Users user = (Users) session.getAttribute("user");*/
	    Users user = new Users();
	    user.setUserid(1);
	    System.out.println(user.getUserid());
		List<Map<String, String>> tree = userServiceImpl.getTreeMenuByUserId(user.getUserid());
		System.out.println(tree.toString());
		return tree;
	}
	

}



