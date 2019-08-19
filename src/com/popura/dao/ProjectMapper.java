package com.popura.dao;



import java.util.List;

import com.popura.entity.Project;




public interface ProjectMapper {

	//项目全查询
	public List<Project> projectAllSelect() throws Exception;
	
}
