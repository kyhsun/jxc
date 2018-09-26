package com.zx.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zx.pojo.Leavebill;
import com.zx.pojo.Users;
import com.zx.service.LeaveBillService;

@Controller
public class LeaveBillController {
	/**
	 * 自定义类型转换器
	 */
	@InitBinder
	public void initBinder(HttpServletRequest request,ServletRequestDataBinder binder) throws Exception {
		binder.registerCustomEditor(
				Date.class, 
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"),true));
	}
	@Autowired
	LeaveBillService leaveBillServiceImpl;
	@RequestMapping("/showAllLeaveBill")
	public String showAllLeaveBill(HttpServletRequest request,HttpSession session){
		Users user = (Users) session.getAttribute("user");
		List<Leavebill> list = leaveBillServiceImpl.getLeaveById(user.getUserid());
		for (Leavebill leavebill : list) {
			System.out.println(leavebill.getCause());
		}
		request.setAttribute("leaveBill", list);
		return "leaveBillAll";
	}
	@ResponseBody
	@RequestMapping("/addLeaveBill")
	public String addLeave(Leavebill l){
		l.setState(0);
		boolean t = leaveBillServiceImpl.addLeaveBill(l);
		if(t){
			return "添加成功";
		}
		return "添加失败";
	}

}
