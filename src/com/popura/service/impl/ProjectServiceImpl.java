package com.popura.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.popura.dao.OrderMapper;
import com.popura.dao.ProjectMapper;
import com.popura.entity.Project;
import com.popura.entity.WorkOrder;
import com.popura.service.ProjectService;

@Service
public class ProjectServiceImpl implements ProjectService{

	@Resource
	private ProjectMapper projectMapper;
	@Resource
	private OrderMapper orderMapper;
	@Override
	public List<Project> projectAllSelect() {
		List<Project> pList = null;
		try {
			pList = projectMapper.projectAllSelect();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pList;
	}

	@Override
	public boolean workOrderInsert(WorkOrder workOrder) {
		boolean isDone = false;
		int updateRows = 0;
		try {
			updateRows = orderMapper.workOrderInsert(workOrder);
			if(updateRows>0){
				isDone = true;
			}
		} catch (Exception e) {
			//为了事物回滚手动抛出一个异常
			throw new RuntimeException("添加学生失败...");
		}
		return isDone;
	}

	@Override
	public List<WorkOrder> allSelect() {
		List<WorkOrder> oList = null;
		try {
			oList = orderMapper.allSelect();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return oList;
	}

}
