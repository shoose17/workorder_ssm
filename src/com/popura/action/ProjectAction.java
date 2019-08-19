package com.popura.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.springframework.jca.work.WorkManagerTaskExecutor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.popura.entity.Project;
import com.popura.entity.WorkOrder;
import com.popura.service.ProjectService;

@Controller
@RequestMapping("/project")
public class ProjectAction {

	@Resource
	private ProjectService projectService;
	
	@RequestMapping("/pSelect")
	public @ResponseBody List<Project> pSelect(){
		List<Project> pList = projectService.projectAllSelect();
		
		return pList;
	}
	
	@RequestMapping("/addInit")
	public String addInit(String projectId,Model model){
		model.addAttribute("projectId",projectId);
		
		return "add";
	}
	
	@RequestMapping("/add")
	public String add(WorkOrder workOrder,HttpServletRequest request){
		HttpSession session = request.getSession();
		if(projectService.workOrderInsert(workOrder)){
			session.setAttribute("message", "保存成功！");
		}else{
			session.setAttribute("message", "保存失败！");
		};
		
		return "forward:oSelect";
	}
	
	@RequestMapping("/oSelect")
	public String oSelect(Model model){
		List<WorkOrder> list =  projectService.allSelect();
		model.addAttribute("list",list);
		return "list";
	}
}
