<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<jsp:useBean id="student" class="com.demo.Student" scope="session">
<jsp:setProperty name="student" property="*"/>
</jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询结果</title>
</head>
<body>

<%
 String driverName="com.mysql.jdbc.Driver" ;   //jdbc连接
 String userName="root" ;
 String userPasswd="root"; 
 String dbName="lou" ;
 String tableName="q" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 String banji=request.getParameter("name1");
 banji = new String(banji.getBytes("iso8859-1"),"UTF-8");
 if(banji==null||"".equals(banji))
 	out.print(" ");
 else{
 String sql="SELECT * FROM q WHERE class1='"+banji+"'";

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 if(!banji.equals(null)){
 out.print("id"+" "); 
 out.print("name "+" ");
 out.print("age"+" ") ;
 out.print("数学"+" "); 
 out.print("物理"+" ");
 out.print("学院  "+" ") ;
 out.print("系  "+" "); 
 out.print("班级  ");
 out.print("<br>");}
 while(rs.next()) { 
	out.print(rs.getString(1)+" ");
 	out.print(rs.getString(2)+" ");
 	out.print(rs.getString(3)+" ") ;
 	out.print(rs.getString(4)+" ");
 	out.print(rs.getString(5)+" ");
 	out.print(rs.getString(6)+" ") ;
 	out.print(rs.getString(7)+" ");
 	out.print(rs.getString(8));
 	out.print("<br>");
 }
 rs.close();
 statement.close();
 connection.close();}
 %>
</body>
</html>