<%@ page language="java" import="java.util.*,java.sql.*,java.io.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考试安排</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:103px;
	height:100px;
	z-index:1;
	left: 180px;
	top: 250px;
}
table {  
    width: 1200px;  
}  
td,th {  
    height: 30px;  
    text-align:center;
}  
-->
</style>
  </head>
  <%	request.setCharacterEncoding("utf-8") ;	%>
  <body>
    <div id="Layer1">
  <center>
<%  
        String driverName = "com.mysql.jdbc.Driver";  
        String userName = "root";   
        String userPasswd = "1234";  
        String dbName = "login";  
        String tableName = "project"; 
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql);
    %>  
    <br>  
    <br>  
    <table>  
        <tr>  
            <th>  
                <%  
                    out.print("序号");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("课程");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("学分");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("类别");  
                %>  
            </th>  
            <th>  
                <%  
                    out.print("考核方式");  
                %>  
            </th><th>  
                <%  
                    out.print("考试时间");  
                %>  
            </th>
            <th>  
                <%  
                    out.print("考试地点");  
                %>  
            </th>
            <th>  
                <%  
                    out.print("座位号");  
                %>  
            </th>
            
        </tr>  
        <% 
            while (rs.next()) {  
        %>  
        <tr>  
            <td>  
                <%  
                    out.print(rs.getString(1));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(2));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(3));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(4));  
                %>  
            </td>  
            <td>  
                <%  
                    out.print(rs.getString(5));  
                %>  
            </td>
            <td>  
                <%  
                    out.print(rs.getString(6));  
                %>  
            </td>
            <td>  
                <%  
                    out.print(rs.getString(7));  
                %>  
            </td>
            <td>  
                <%  
                    out.print(rs.getString(8));  
                %>  
            </td>
        </tr>  
        <%  
            } 
        %>
    </table>  
  </div>
   <tr><td><div id="barcon" name="barcon"></div></td></tr>
</center></div>
<jsp:include page="exam.jsp"></jsp:include>
  </body>
</html>

