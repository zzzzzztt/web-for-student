<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<%@ page import="java.util.Date" import="javax.servlet.annotation.WebServlet" %>
<jsp:useBean id="student1" class="com.demo.Student" scope="session">
<jsp:setProperty name="student1" property="*"/>
</jsp:useBean>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<%String id=request.getParameter("name");
  String password=request.getParameter("password");

  String driverName="com.mysql.jdbc.Driver" ;   //jdbc连接
  String userName="root" ;
  String userPasswd="root"; 
  String dbName="lou" ;
  String tableName="user" ;
  String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  Connection connection=DriverManager.getConnection(url);
  Statement statement = connection.createStatement();
  

  String sql="SELECT password FROM user WHERE id="+id;
  ResultSet rs = statement.executeQuery(sql);
  ResultSetMetaData rmeta = rs.getMetaData();
  int numColumns=rmeta.getColumnCount();
  response.setContentType("text/html;charset=UTF-8");
  while(rs.next()) { 
	 
	  if(rs.getString(1).equals(password))
		  response.sendRedirect("all.jsp");
	else 
	{	out.print("密码或用户名错误");
	    out.print("<a href='show.jsp'>返回</a>");	} 
  } 

  rs.close();
  statement.close();
  connection.close();
  
%>
</body>
</html>