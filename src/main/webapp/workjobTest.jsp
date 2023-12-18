<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  
<script type="text/javascript">
function password() {
	var testV = 1;
	var pass1 = prompt('Please input the password!');
	while (testV < 3) {
	if (!pass1)
	history.go(-1);
	if (pass1 == "baizhuadmin") {
	break;
	}
	testV+=1;
	var pass1 =
	prompt('Password error!');
	}
	if (pass1!="password" & testV ==3)
	history.go(-1);
	return " ";
	}
	document.write(password());
	
	$(function() {
	    $( "#input1" ).datepicker({
	      changeMonth: true,
	      changeYear: true
	    });
	  });
</script>
<style type="text/css">
h5{
margin-bottom:0;
padding-bottom:0
}

</style>

</head>
<body>
<form id="registTable" align="center" action="ZhuceServlet"
					method="post">
		<h1>新規会員登録</h1>
					<h5>本名ではなく、ウェブサイト使ったユーザー名を入力してください</h5>
					<label for="name"> ユーザー名：</label>
					 <input id="name" name="name" type="text" size="40" placeholder=名前を入力してください/>
						<br>
					<h5>パスワードは半角英字と数字でお願いします</h5>
						<label for="password"> パスワード：</label>
						 <input	id="pwd" name="pwd" type="password" maxlength="8"
						placeholder=パスワードを入力してください/> 
						<br>
						
						<h5>パスワードは再度に入力してください</h5>
						 <label	for="password"> パスワード再確認：</label> 
						 <input id="pwd2" name="pwd2" type="password" maxlength="8"
						placeholder=パスワードを入力してください/> 
						<br>
						<br>						
						 <label>性別を入力してください：</label>
						 <input type="radio" name="gender" value="M">男 <input
						type="radio" name="gender" value="F" checked>女 
						<br>
						
						<h5>電話番号は例のような入力してください(例：080-1234-5678)</h5>
					<label for="name"> 電話番号：</label>
					 <input id="name" name="phoneNum" type="text" size="40" placeholder=電話番号を入力してください>
						<br>
						
						<h5>輸入車はその他を選んでください</h5>
					<label>お持っている車種を選んでください：</label>
					 <select name="carType">
						<option value="1">トヨタ</option>
						<option value="2">日産</option>
						<option value="3">ホンダ</option>
						<option value="4">三菱</option>
						<option value="5">マツダ</option>
						<option value="6">スバル</option>
						<option value="7">スズキ</option>
						<option value="8">ダイハツ</option>
						<option value="9">日本フォード</option>
						<option value="10">ミツオカ</option>
						<option value="11">レクサス</option>
						<option value="12">日野自動車</option>
						<option value="13">日産ディーゼル</option>
						<option value="14">三菱ふそう</option>
						<option value="15">その他</option>
					</select> 
					
					<h5>車の生産期日を例のような入力してください（例：1900/01/01）</h5>
					<label>年月日: <input type="text" id="input1" name="buyYear" /></label>
					
					<h5>今まで車のキロ数の里程を入力してください</h5>
					<label for="name"> 車の里程：</label>
					 <input id="name" name="odometer" type="text" size="40" placeholder=キロ数の里程を入力してください>
					<br>

                    <h5>ご住所を入力してください、改行できる</h5>
					<textarea name="address" rows="3" cols="30"></textarea>
					
					<br> <br> <input type="submit" value="新規登録">
					 <input type="reset" value="重置">
				</form>
</body>
</html>