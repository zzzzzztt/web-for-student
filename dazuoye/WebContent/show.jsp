<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isErrorPage = "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<style type="text/css">    
 body{    
      background-image: url(images/2.jpg);       
}    
</style>
</head><center>
<body><form action="login.jsp"method="post">
<br><br><br><br><br><br><br><br>
<b>学生信息查询与管理系统</b><br><br>
学号：<input type="text"name="name"><br><br>
密码：<input type="password"name="password"><br>
    <input type="submit" value="确定" >
    <input type="reset" value="取消" >
    </form>

</body></center>
</html>