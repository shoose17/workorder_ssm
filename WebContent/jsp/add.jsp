<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加工单</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.js"></script>
<style type="text/css">
.headStu {
	width: 700px;
	height: 30px;
	color: red;
	margin: 0px auto;
	margin-bottom: 5px;
	padding-bottom: 25px;
	text-align: center;
}

.bodyStu {
	width: 700px;
	height: 400px;
	margin: 0px auto;
}

table {
	width: 700px;
}

th {
	background-color: rosybrown;
}
.workorder{
border:1px solid black;
width:700px;
height:345px;
margin: 0px auto;
}
</style>
</head>
<body>
${projectId }
<div class="workorder">
	<div class="headStu">
		<h1>添加工单</h1>
	</div>
	<div class="bodyStu">
		<form method="post" action="${pageContext.request.contextPath }/project/add">
		
			<table border="1px">
				<tr>
					<td style="background-color:plum;font-size:25px;width:35%;">执行人(*)</td>
					<td><input type="text" name="executor" id="executor"></input>
					<input type="hidden" name="projectId" value="${projectId }" id="projectId"></input>
					</td>
				</tr>
				<tr>
					<td style="background-color:plum;font-size:25px;width:35%;">任务描述(*)</td>
					<td><textarea rows="10px" cols="21px" name="description" id="description"></textarea></td>
				</tr>
				<tr>
					<td style="background-color:plum;font-size:25px;width:35%;">级别</td>
					<td><select style="width:170px;" name="orderLevel" id="level">
					<option value="1">1级</option>
					<option value="2">2级</option>
					<option value="3">3级</option>
					</select></td>
				</tr>
				
				<tr style="border:0px;">
					<td colspan="2" style="text-align:center;"><input type="submit" value="提交"></input></td>
				</tr>
			</table>
		</form>
	</div>
	</div>
	<script type="text/javascript">
	$("form").submit(function(){
		if($.trim($("#executor").val())==""){
			$("#executor").focus();
			alert("执行人不能为空！");
			return false;	
		}
		if($.trim($("#description").val())==""){
			$("#description").focus();
			alert("任务描述不能为空！");
			return false;	
		}
		if($.trim($("#level").val())==""){
			$("#level").focus();
			alert("级别不能为空！");
			return false;	
		}
		return true;
	});
</script>
</body>
</html>