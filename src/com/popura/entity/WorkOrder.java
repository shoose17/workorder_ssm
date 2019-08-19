package com.popura.entity;

import java.util.Date;

/** 
* @description 工单类
* @author 李洋 
* @address 抚顺职业技术学院
* @created 2018年7月18日 下午2:32:46
* @version 1.0.0
*/
public class WorkOrder {

	//工单id
	private Integer id;
	//项目id
	private Integer projectId;
	//执行人
	private String executor;
	//项目描述
	private String description;
	//工单等级编号
	private Integer orderLevel;
	//提交时间
	private Date createDate;
	
	//工单等级名称
	private String orderLevelName;
	//项目名称
	private String projectName;
	
	public WorkOrder(){}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProjectId() {
		return projectId;
	}

	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}

	public String getExecutor() {
		return executor;
	}

	public void setExecutor(String executor) {
		this.executor = executor;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getOrderLevel() {
		return orderLevel;
	}

	public void setOrderLevel(Integer orderLevel) {
		this.orderLevel = orderLevel;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getOrderLevelName() {
		return orderLevelName;
	}

	public void setOrderLevelName(String orderLevelName) {
		this.orderLevelName = orderLevelName;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
}
