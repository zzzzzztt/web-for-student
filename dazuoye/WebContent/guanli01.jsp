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
<title>学生管理</title>
</head>
<body>
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
 
 
 String password=request.getParameter("id1");

 String sql="UPDATE user SET password='"+password+"'WHERE id="+student.getid();
 statement.executeUpdate(sql);
 
 sql="SELECT id,password FROM user WHERE id="+student.getid();

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改后的信息：<br>");

 while(rs.next()) { 
	 student.setpassword(rs.getString(2));

	out.print("&nbspid&nbsp"+"&nbsp;"+student.getid()+"<br>");
	out.print("password："+student.getpassword()+"<br>");

    }
 rs.close();
 statement.close();
 connection.close();
 %>

</body>
</html>