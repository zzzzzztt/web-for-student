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
 String tableName="kecheng" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 
 String id=request.getParameter("id");
 String name=request.getParameter("id1");
 name = new String(name.getBytes("iso8859-1"),"UTF-8");
 String college=request.getParameter("id2");
 college = new String(college.getBytes("iso8859-1"),"UTF-8");
 String xi=request.getParameter("id3");
 xi = new String(xi.getBytes("iso8859-1"),"UTF-8");
 String banji=request.getParameter("id4");
 banji = new String(banji.getBytes("iso8859-1"),"UTF-8");
 String sql="UPDATE kecheng SET  kemin='"+name+"',rkls='"+college+"',sksj='"+xi+"',skdd='"+banji+"' WHERE k="+id;
 statement.executeUpdate(sql);
 
 sql="SELECT * FROM kecheng WHERE k="+id;

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改后的信息：<br>");

 while(rs.next()) { 	 
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setname((rs.getString(2)));
	 student.setcollege((rs.getString(3)));
	 student.setxi((rs.getString(4)));
	 student.setbanji((rs.getString(5)));
	 out.print("课程代号："+student.getid()+"<br>");
	out.print("课名："+student.getname()+"<br>");
	out.print("任课老师："+student.getcollege()+"<br>") ;
	out.print("上课时间："+student.getxi()+"<br>");	
	out.print("上课地点："+student.getbanji()+"<br>");

    }
 rs.close();
 statement.close();
 connection.close();
 %>

</body>
</html>