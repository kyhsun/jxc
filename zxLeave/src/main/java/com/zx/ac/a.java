package com.zx.ac;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.zx.pojo.Users;
import com.zx.service.impl.UserServiceImpl;
import com.zx.service.impl.WorkflowServiceImpl;

public class a implements TaskListener{
	
	public void notify(DelegateTask delegateTask) {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();  
		Users user = (Users)request.getSession().getAttribute("user");
		System.out.println(user.getRealname());
		System.out.println(new a().getClass());
		ApplicationContext ac = new FileSystemXmlApplicationContext("classpath:applicationContext.xml"); 
		UserServiceImpl userService  = (UserServiceImpl) ac.getBean("userServiceImpl");
		//获取下一任代理人
		Users us = userService.getNextBQ(user);
		//设置个人任务的办理人
		delegateTask.setAssignee(us.getRealname());
		
		
	}
}
