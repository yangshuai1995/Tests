<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>登录窗口</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/style.css">
	
	<script language="javascript">
function check()
{ 
var number=document.getElementById("xuehao").value;
if(number=="")
   {
      alert("学号不能为空");
      return false;
}
var Psd=document.getElementById("password").value;
if(Psd=="")
   {
      alert("密码不能为空");
      return false;
}
}
</script>
	
	</head>
	<body style="background: url(img/background.jpg)">

		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="menu">
						<li><h3>教务管理系统登录窗口</h3></li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					

					<!-- Start Sign In Form -->
					<form action="login" method="get" class="fh5co-form animate-box" data-animate-effect="fadeIn" onsubmit="return check();">
						<h2>登  录  窗  口</h2>
						<div class="form-group">
							<label for="shenfen" class="sr-only">身份</label>
							<select class="form-control" id="shenfen" name="shenfen">
							    <option value="1" selected>学生</option>
							    <option value="2">教师教辅人员</option>
							    <option value="3">管理人员</option>
							    <option value="4">门户维护员</option>
							</select>
						</div>
						<div class="form-group">
							<label for="xuehao" class="sr-only">学号</label>
							<input type="text" class="form-control" id="xuehao" name="xuehao" placeholder="学号" maxlength=12 autocomplete="off" onkeyup="value=value.replace(/[^(\d)]/g,'')"/>
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">密码</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="密码" maxlength=20 autocomplete="off">
						</div>
						<div class="form-group">
							<label for="remember"><input type="checkbox" id="remember"> 记住密码？</label>
						</div>
						<div class="form-group">
							<p><a href="register.jsp">尚未注册？</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="登 录" class="btn btn-primary">
						</div>
					</form>
					<!-- END Sign In Form -->
				</div>
			</div>
		</div>
	<script src="js/bootstrap.min.js"></script>
	<!-- Placeholder -->
	<script src="js/jquery.placeholder.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	</body>
</html>


