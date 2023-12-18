<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" >
	function time() {
		var time = new Date();
		var year = time.getFullYear();
		var month = time.getMonth() + 1;
		var date = time.getDate();
		var hour = time.getHours();
		var min = time.getMinutes();
		var sec = time.getSeconds();
		
		if(sec<10){sec="0"+sec;}
		if(min<10){min="0"+min;}
		if(hour<10){hour="0"+hour;}

		var nowtime=year + "年" + month + "月" + date + "日" + hour + ":"
				+ min + ":" + sec;
		// alert(nowtime); 
		 return nowtime;
		}
      var time1=time();
	//alert(time1);
	//document.getElementById("time").value="time1";
	 	//_input.value = time1; */
	//$("#time").val("time1");
	//$('#time').textbox('setValue',time1);
	
</script>
</head>
<body>
<h1 align="center">時刻表示</h1> 
	
	 <input type="text"  align="center"  name="date" id="time">
<script>document.getElementById("time").value=time1</script>
</body>
</html>