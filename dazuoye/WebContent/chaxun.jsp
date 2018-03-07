<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style type="text/css">    
 body{    
      background-image: url(images/2.jpg);       
}    
</style>
<p align="center"><font size=5><b>信息查询</b></font></p>
<body><center>
<table>
<form action="chaxun.jsp" method="post">
<table border=0 cellspacing=5 cellpadding=5 width="100%">
选择一种方式查询：<br>
<tr>班级学生信息查询:<input type="text" name="name1">&nbsp;&nbsp;<input type="submit" name="submit"value="输入班级查询"></tr><br><br>
<tr>学生详细信息查询:<input type="text" name="name2">&nbsp;&nbsp;<input type="submit" name="submit"value="输入学号查询"></tr><br><br>
<tr>学生成绩查询:<input type="text" name="name3">&nbsp;&nbsp;<input type="submit" name="submit"value="输入学号查询"></tr><br><br>
</table></form><center>
<hr>
<jsp:include page="chaxun1.jsp" flush="true"/><hr>
<jsp:include page="chaxun2.jsp" flush="true"/><hr>
<jsp:include page="chaxun3.jsp" flush="true"/><hr>
</body>
</html>