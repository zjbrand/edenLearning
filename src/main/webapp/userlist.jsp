<%@ page language="java"  import="java.util.*"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+ request.getServerName()+":"+ request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
th,td{
	width:150px;
	border:2px solid gray;
	text-align: center;
}
body{
	text-align:center;
}
a{
	text-decoration:none;
}
table{
	border-collqpse:collapse;
}	
</style>

</head>

<body>
	<h2 align="center">信息</h2>
	<table align="center">
		<tr>
			<td>書頁</td>
			<td>書名</td>
			<td>庫存量</td>
		</tr>
	</table>
	<table align="center">
		<c:forEach items="${listss}" var="book">
			<tr>
				<td class="hidden-480">${book.id}</td>
				<td class="hidden-480">${book.name}</td>
				<td class="hidden-480">${book.number}</td>				
			</tr>
		</c:forEach>
	</table>
	<br>
	
	<%-- <c:if test="${pageNos > 1}"> --%>
		<a href="ListUser?pageNos=1">首頁</a>
		<a href="ListUser?pageNos=${recordCount - 1 }">上一頁</a>
		
<%-- 	</c:if> --%>
	
	<%-- <c:if test="${pageNos < recordCount}"> --%>
		<a href="ListUser?pageNos=${recordCount + 1}">下一頁</a>
		<a href="ListUser?pageNos=${total}">末頁</a>
	<%-- </c:if> --%>
	
	<form action="ListUser">
		<h4 aling="center">
			共${total}頁 &nbsp &nbsp&nbsp第<input type="text" value="${pageNos}"
			name="pageNos" size="1">頁&nbsp &nbsp&nbsp<input type="submit" value="到達">			
		</h4>
	</form>
			
</body>
</html>