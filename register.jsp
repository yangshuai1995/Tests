<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>注册窗口</title>
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
var xuehao2=document.getElementById("xuehao2").value;
if(xuehao2=="")
{
    alert("学号不能为空");
    return false;
}
var Name=document.getElementById("name").value;
if(Name=="")
{
    alert("姓名不能为空");
    return false;
}
var perinfo=document.getElementById("person").value;
if(perinfo=="")
{
    alert("身份证号不能为空");
    return false;
}
}
</script>
	</head>
	<body style="background: url(img/background.jpg)">

		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">					
					<!-- Start Sign In Form -->
					<form action="flogin" method="post" class="fh5co-form animate-box" data-animate-effect="fadeIn" onsubmit="return check();">
						<h2>注  册</h2>
						<div class="form-group">
							<label for="xuehao2" class="sr-only">学号</label>
							<input type="text" class="form-control" id="xuehao" name="xuehao" placeholder="学号" autocomplete="off" maxlength=12 onkeyup="value=value.replace(/[^(\d)]/g,'')"/>
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">姓名</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="姓名" autocomplete="off" maxlength=20 onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^\u4E00-\u9FA5]/g,''))" />
						</div>
						<div class="form-group">
							<label for="person" class="sr-only">身份证号</label>
							<input type="text" class="form-control" id="person" name="person" placeholder="身份证号" autocomplete="off" maxlength=18>
						</div>
						<div class="form-group">
						    <label for="psd" class="sr-only">密码</label>
						    <input type="text" class="form-control" id="psd" name="psd" placeholder="密码" autocomlete="off" maxlength=20>
						</div>
						<div class="form-group">
						    <label for="cpsd" class="sr-only">密码确认</label>
						    <input type="text" class="form-control" id="cpsd" name="cpsd" placeholder="密码确认" autocomlete="off" maxlength=20>
						</div>
						<div class="form-group">
							<p><a href="login.jsp">返回登录</a></p>
						</div>
						<div class="form-group">
							<input type="submit" value="提交验证" class="btn btn-primary"/>
						</div>
					</form>
					<!-- END Sign In Form -->
				</div>
			</div>
		</div>

	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/main.js"></script>

	</body>
</html>

