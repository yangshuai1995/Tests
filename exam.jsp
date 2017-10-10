<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 <title>考试安排表</title>
 <link rel="stylesheet" href="css/style1.css">
 <script type="text/javascript">
function setsubmit()
{
if(mylink.value == 1)
window.location='data.jsp';
if(mylink.value == 2)
window.location='data2.jsp';
}
</script>

    <script type="text/javascript">
    function setCookie(name, value) {
        var exp = new Date();
        exp.setTime(exp.getTime() + 24 * 60 * 60 * 1000);
        document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
    }
    function getCookie(name)
    {
        var regExp = new RegExp("(^| )" + name + "=([^;]*)(;|$)");
        var arr = document.cookie.match(regExp);
        if (arr == null) {
            return null;
        }
        return unescape(arr[2]);
    }
</script>

</head>
<body>
  <div style="font-size:17px"><a href="main.jsp">返回主页</a></div>
  <section class="container">
<font size="4">学年学期:</font>
    <div class="dropdown">
      <select name="mylink" id="mylink" class="dropdown-select" onclick="setCookie('mylink',this.selectedIndex)">
        <option value="1">2016-2017学年第一学期</option>
        <option value="2">2015-2016学年第二学期</option>
      </select>
      <script type="text/javascript">
    var selectedIndex = getCookie("mylink");
    if(selectedIndex != null) {
        document.getElementById("mylink").selectedIndex = selectedIndex;
    }
</script> 
    </div>
    <br><br>
<font size="4">考试轮次性质:</font>
    <div class="dropdown">
      <select name="mylink2" id="mylink2" class="dropdown-select" onclick="setCookie('mylink2',this.selectedIndex)">
        <option value="1">中考</option>
        <option value="2">末考</option>
        <option value="3">补考</option>
      </select>
       <script type="text/javascript">
    var selectedIndex = getCookie("mylink2");
    if(selectedIndex != null) {
        document.getElementById("mylink2").selectedIndex = selectedIndex;
    }
</script>
    </div>
    <br><br>
<font size="4">考试轮次:</font>
    <div class="dropdown">
      <select name="two" class="dropdown-select">
        <option value="1">期末考试</option>
      </select>
      </div>
<Input type="submit" id="check" class="btn2 pbtn1" name="check" value="检索1" style="width:100px;height:30px;" onMouseOver="this.style.borderColor='red'" onMouseOut="this.style.borderColor='blue'" onclick="setsubmit(this)" />   
  </section>
</body>
</html>