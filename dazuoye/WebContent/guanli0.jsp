<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ page language="java" %> 
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="student" class="com.demo.Student" scope="session">
<jsp:setProperty name="student" property="*"/>
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理系统</title>
</head>
<body>
<b>学生用户管理</b><br>

<%
 String driverName="com.mysql.jdbc.Driver" ;   //jdbc连接
 String userName="root" ;
 String userPasswd="root"; 
 String dbName="lou" ;
 String tableName="user" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 
out.print("输入你的账号密码：");
out.print("<form action='guanli0.jsp' method='get'>");
out.print("<input type='text' name='id'><br>");
out.print("<input type='text' name='password'><br>");
out.print("<input type='submit' name='提交'>");
out.print("</form>");

 String id=request.getParameter("id");
 String sql="SELECT id,password FROM user WHERE id="+id;

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改以下信息：<br>");
 

 while(rs.next()) { 
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setpassword((rs.getString(2)));

	out.print("<form method='post' action='guanli01.jsp'>");
	out.print("&nbspid&nbsp"+"&nbsp;"+"&nbsp;"+"&nbsp;"+student.getid()+"<br>");
	out.print("password："+"<input type='text' name='id1' value='"+student.getpassword()+"'><br>");
	out.print("<input type='submit' name='提交' value='提交'>");
 	out.print("</form><br>");
    }
 rs.close();
 statement.close();
 connection.close();
 %>

</body>
</html>