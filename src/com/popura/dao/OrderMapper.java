package com.popura.dao;


import java.util.List;

import com.popura.entity.WorkOrder;

public interface OrderMapper {

	
	//工单添加
	public int workOrderInsert(WorkOrder workOrder) throws Exception;
	//工单全查询
	public List<WorkOrder> allSelect() throws Exception;
}
