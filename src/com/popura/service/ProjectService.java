package com.popura.service;


import java.util.List;


import com.popura.entity.Project;
import com.popura.entity.WorkOrder;

public interface ProjectService {

	public List<Project> projectAllSelect();
	public boolean workOrderInsert(WorkOrder workOrder);
	public List<WorkOrder> allSelect();
}
