package com.popura.entity;
/** 
* @description 项目类
* @author 李洋 
* @address 抚顺职业技术学院
* @created 2018年7月18日 下午2:30:31
* @version 1.0.0
*/
public class Project {

	//项目id
	private Integer id;
	//项目名称
	private String projectName;
	
	public Project(){}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
}
