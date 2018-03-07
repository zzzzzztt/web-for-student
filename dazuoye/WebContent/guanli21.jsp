<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 String tableName="score" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 
 String math=request.getParameter("id1");
 String phy=request.getParameter("id2");
 
 String sql="UPDATE score SET  math="+math+",physics="+phy+" WHERE id="+student.getid();
 statement.executeUpdate(sql);
 
 sql="SELECT id,name,math,physics FROM score WHERE id="+student.getid();

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改后的信息：<br>");

 while(rs.next()) { 
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setname((rs.getString(2)));
	 student.setmath(Double.parseDouble(rs.getString(3)));
	 student.setphy(Double.parseDouble(rs.getString(4)));
	
	out.print("&nbspid&nbsp"+"&nbsp;:"+student.getid()+"<br>");
	out.print("name："+student.getname()+"<br>");
	out.print("数学："+student.getmath()+"<br>") ;
	out.print("物理："+student.getphy()+"<br>");

    }
 rs.close();
 statement.close();
 connection.close();
 %>

</body>
</html>