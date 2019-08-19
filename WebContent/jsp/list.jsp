<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业工单列表</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<style type="text/css">
.headPro{
   width:800px;
   height:35px;
   margin:0px auto;
   margin-bottom:0px;
   padding-bottom:15px;
   text-align:center;
}
.bodyPro{
   width:800px;
   height:440px;
   margin:0px auto;
   border:1px solid black;
}
table{
   width:800px;
}
#firstTr{
	background-color: gray;
	font-size: 24px;
}
</style>
</head>
<body>
<div class="bodyPro">
<div class="headPro">
<h1>企业工单列表</h1>
</div>
	<table border="1">
		<tr id="firstTr">
			<th>工单编号</th>
			<th>项目名称</th>
			<th>执行人</th>
			<th>任务描述</th>
			<th>级别</th>
			<th>创建时间</th>
		</tr>
		<c:forEach var="li" items="${list }" varStatus="vs">
			<tr>
				<td>${li.id }</td>
				<td>${li.projectName }</td>
				<td>${li.executor }</td>
				<td>${li.description }</td>
				<td>${li.orderLevelName }</td>
				<td>${li.createDate }</td>
			</tr>
		</c:forEach>
	</table>
</div>
<div style="text-align:center;color:red;">${message }</div>

<script type="text/javascript">
	$(function() {
	     $("table tr:gt(0):even").css("background-color", "plum");
	});
</script>
</body>
</html>