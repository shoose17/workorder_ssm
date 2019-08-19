<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>企业订单管理系统</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<script type="text/javascript">
$(function() {
    getProjectData();   
});

function getProjectData() {
	var url = "${pageContext.request.contextPath}/project/pSelect";
		 $.ajax({
			type:"get",
			url:url,
			dataType:"json",
			success : function(data,textStatus,jqXHR) {
				$.each(data,function(index,value){
					var $option = $("<option value='" + value['id'] + "'>"+ value['projectName'] + "</option>");
					$("#proSelect").append($option);
				});
			},
			error : function(data,textStatus,jqXHR) {
				alert("请求失败！")
			}
		}); 
		
}
</script>

<style type="text/css">
.headStu{
   width:700px;
   height:35px;
   color:red;
   margin:0px auto;
   margin-bottom:5px;
   padding-bottom:25px;
   text-align:center;
   border:1px solid black;
   margin-top:150px;
}
.bodyStu{
   width:700px;
   height:100px;
   margin:0px auto;
    border:1px solid black;
}
table{
   width:700px;
}
td{
height:30px;
}
option{
width:120px;
height:23px;
}
</style>
</head>
<body>
<div class="headStu">
<h1>企业工单管理系统</h1>
</div>
<div class="bodyStu">
   <form method="post" action="${pageContext.request.contextPath }/project/addInit">
	<table border="1">
		<tr>
			<td style="background-color:plum;font-size:25px;width:35%;">选择项目</td>
			<td style="font-size:25px;width:65%;">
			<select name="projectId" id="proSelect"></select>
			<input type="submit" value="确定"></input>
			</td>
		</tr>
	</table>
	</form>
</div>

</body>
</html>