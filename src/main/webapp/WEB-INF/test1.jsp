<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path=request.getContextPath();
String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<title>Insert title here</title>

<script type="text/javascript">
$(document).ready(function)(){
$("botton").click(function(){

	$("h1,h2,p").removeClass("blue");
});

	
});



</script>


<style type="text/css">

.important{
font-weight:bold;
font-size:xx-large;

}
.blue{
	color:blue;
}

th, td {
	width: 150px;
	border: 2px solid gray;
	text-align: center;
}

body {
	text-align: center;
}

a {
	text-decoration: none;
}

table {
	border-collapse: cllapse;
}
</style>

</head>
<body>
	<h2 align="center">圖書信息</h2>
	<table align="center">
		<tr>
			<td>書號</td>
			<td>書名</td>
			<td>庫存量</td>
		</tr>
	</table>
	<table align="center">
		<c:forEach items="${listss}" var="person">
			<tr>
				<td class="hidden-480">${person.id}</td>
				<td class="hidden-480">${person.name}</td>
				<td class="hidden-480">${person.number}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<c:if test="${pageNos>1}">
		<a href="ListUser?pageNos=1">首頁</a>
		<a href="ListUser?pageNos=${pageNos-1}">上一頁</a>
	</c:if>
	<c:if test="${pageNos < recordCount}">
		<a href="ListUser?pageNos=${pageNos+1}">下一頁</a>
		<a href="ListUser?pageNos=${recordCount1}">末頁</a>
	</c:if>
	<form action="ListUser">
		<h4 align="center">
			共${recordCount}頁&nbsp<input type="text" value="${pageNos}"
				name="pageNos" size="1">頁<input type="submit" value="到達">
		</h4>
	</form>
	<h1 class="blue">test1</h1>
	<h2 class="blue">test2</h1>
	<p class="blue">文字1</p>
	<p class="important">文字2</p>
	<br>
	<button>removeClass	</button>
	
	
		
</body>
</html>