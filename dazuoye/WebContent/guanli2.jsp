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
<body><form action="guanli2.jsp" method="post">
<b>成绩管理</b><br>
输入需要修改的id号/添加成绩输入1：<input type="text" name="id">
<input type="submit" name="提交id" value="提交id"><br></form>
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
 
 String a="1";
 String id=request.getParameter("id");
 if(a.equals(id)){
	 out.print("<form method='get' action='guanli211.jsp'>");
		out.print("&nbspid&nbsp"+"&nbsp;"+"&nbsp;"+"&nbsp;"+"&nbsp：<input type='text' name='id' ><br>");
		out.print("name："+"<input type='text' name='id1'><br>");
		out.print("数学："+"<input type='text' name='id2'><br>") ;
		out.print("物理："+"<input type='text' name='id3'><br>");
		out.print("<input type='submit' name='提交' value='提交'>");
	 	out.print("</form><br>");
 }
 else{
 String sql="SELECT id,name,math,physics FROM score WHERE id="+id;

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改以下信息：<br>");
 

 while(rs.next()) { 
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setname((rs.getString(2)));
	 student.setmath(Double.parseDouble(rs.getString(3)));
	 student.setphy(Double.parseDouble(rs.getString(4)));

	out.print("<form method='post' action='guanli21.jsp'>");
	out.print("&nbspid&nbsp"+"&nbsp;"+"&nbsp;"+"&nbsp;"+student.getid()+"<br>");
	out.print("name："+student.getname()+"<br>");
	out.print("数学："+"<input type='text' name='id1' value='"+student.getmath()+"'><br>") ;
	out.print("物理："+"<input type='text' name='id2' value='"+student.getphy()+"'><br>") ;
	
	out.print("<input type='submit' name='提交' value='提交'>");
 	out.print("</form><br>");
    }
 rs.close();
 statement.close();
 connection.close();}
 %>

</body>
</html>