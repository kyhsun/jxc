package com.zx.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.task.Comment;
import org.activiti.engine.task.Task;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.zx.pojo.Leavebill;
import com.zx.pojo.Users;
import com.zx.service.IWorkflowService;
import com.zx.service.LeaveBillService;

@Controller
public class WorkFlowController {
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
	@Autowired
	IWorkflowService workflowServiceImpl;
	@RequestMapping("/newdeploy")
	public String dempy(@RequestParam("pic")CommonsMultipartFile pic,WorkflowBean wk){
		System.out.println(pic.getOriginalFilename());
		CommonsMultipartFile commonsMultipartFile = (CommonsMultipartFile)pic;
	    DiskFileItem diskFileItem = (DiskFileItem)commonsMultipartFile.getFileItem();
	    File file = diskFileItem.getStoreLocation();
		//文件名称
		String filename = wk.getFilename();
		System.out.println(filename+"++++++++++");
		//完成部署
		workflowServiceImpl.saveNewDeploye(file,filename);
		return "forward:/getList.htm";
	}
	@RequestMapping("/getList")
	public String getList(HttpServletRequest request){
		//1:查询部署对象信息，对应表（act_re_deployment）
		List<Deployment> depList = workflowServiceImpl.findDeploymentList();
		//2:查询流程定义的信息，对应表（act_re_procdef）
		List<ProcessDefinition> pdList = workflowServiceImpl.findProcessDefinitionList();
		//放置到上下文对象中
		request.setAttribute("depList", depList);
		request.setAttribute("pdList", pdList);
				
		return "workflow";
	}
	/**
	 * 开始业务
	 * @return
	 */
	@RequestMapping("/startSq")
	public String startSq(HttpServletRequest request,Leavebill lb){
		System.out.println(lb.getLeavebillid()+"getLeavebillid");
		Users user = (Users) request.getSession().getAttribute("user");
		workflowServiceImpl.saveStartProcess(lb,user);
		
		return "forward:/showAllTaskByName.htm";
	}
	/**
	 * 查询我要办理的业务
	 */
	@RequestMapping("/showAllTaskByName")
	public String showAllTaskByName(HttpServletRequest request){
		
		Users user = (Users) request.getSession().getAttribute("user");
  		List<Task> list = workflowServiceImpl.findTaskListByName(user.getRealname());
  		request.setAttribute("taskList", list);
		return "allTask";
	}
	/**
	 * 最难的一块
	 */
	
	public String viewTaskForm(Task task,HttpServletRequest request){
		Users user = (Users) request.getSession().getAttribute("user");
		/*workflowServiceImpl.saveSubmitTask(task, user.getUsername());*/
		return null;
	}
	/*
	 * 显示任务详细信息
	 * */
	@RequestMapping("/viewTaskForm")
	public String showTask(HttpServletRequest request,String taskId){
//		String taskId = task.getId();
		Leavebill lb = workflowServiceImpl.findLeaveBillByTaskId(taskId);
		request.setAttribute("lb", lb);
		/**二：已知任务ID，查询ProcessDefinitionEntiy对象，从而获取当前任务完成之后的连线名称，并放置到List<String>集合中*/
		List<String> outcomeList = workflowServiceImpl.findOutComeListByTaskId(taskId);
		request.setAttribute("outcomeList", outcomeList);
		/**三：查询所有历史审核人的审核信息，帮助当前人完成审核，返回List<Comment>*/
		List<Comment> commentList = workflowServiceImpl.findCommentByTaskId(taskId);
		request.setAttribute("commentList", commentList);
		request.setAttribute("taskId", taskId);
		
		return "taskForm";
	}
	@RequestMapping("/submitTask")
	public String submitTask(WorkflowBean workflowBean,HttpServletRequest request){
		Users user = (Users) request.getSession().getAttribute("user");
		workflowServiceImpl.saveSubmitTask(workflowBean, user.getRealname());
		
		return "forward:/showAllTaskByName.htm";
	}
}
