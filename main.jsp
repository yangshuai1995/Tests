<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>教务管理系统</title>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/responsive.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/main.js"></script>	
  </head>
  <body>
    <section class="hero">
		<header>
		
			<div class="wrapper">
				<a href="#"><img src="img/top.gif" class="logo" alt="" title=""/></a>
				<a href="#" class="hamburger"></a>
				<nav>
				<div>
				<h1>
				<span id="test1" style="display:none"><input type="text" id="uname" name="uname" />
                </span>
               </h1></div>
					<ul>
						 <li><a href="menu1.jsp">考试管理规定<a></li>
                         <li><a href="menu5.jsp">申请补考<a></li>
                         <li><a href="menu5.jsp">申请缓考<a></li>
                         <li><a href="exam.jsp">考试安排表<a></li>
                         <li><a href="menu5.jsp">考试通报信息<a></li>
                        <a href="login.jsp" class="login_btn">Login</a>
                        
					</ul>
				</nav>
			</div>
		</header><!--  end header section  -->
			<section class="caption">
			<h2 class="caption">Welcome to</h2>
			<br><br><br>
			<br>
			<h2 class="caption">教务管理系统</h2>
			</section>
	</section><!--  end hero section  -->
  </body>
</html>

