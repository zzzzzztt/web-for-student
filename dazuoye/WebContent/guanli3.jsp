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
<body><form action="guanli3.jsp" method="post">
<b>学生信息管理</b><br>
输入需要修改的课程代号/添加课程输入1：<input type="text" name="id">
<input type="submit" name="提交id" value="提交id"></form>

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
 String a="1";
 String id=request.getParameter("id");
 if(a.equals(id)){
	    out.print("<form method='get' action='guanli311.jsp'>");
	    out.print("课程代号"+"：<input type='text' name='id' ><br>");
		out.print("课程名"+"：<input type='text' name='id1' ><br>");
		out.print("任课老师："+"<input type='text' name='id2'><br>");
		out.print("上课时间"+"&nbsp;：<input type='text' name='id3'><br>") ;
		out.print("上课地点："+"<input type='text' name='id4'><br>") ;
		out.print("<input type='submit' name='提交' value='提交'>");
	 	out.print("</form><br>");
	 
 }
 else{
 String sql="SELECT * FROM kecheng WHERE k="+id;
 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改以下信息：<br>");
 while(rs.next()) { 
	 response.setContentType("text/html;charset=UTF-8");
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setname((rs.getString(2)));
	 student.setcollege((rs.getString(3)));
	 student.setxi((rs.getString(4)));
	 student.setbanji((rs.getString(5)));
	out.print("<form method='get' action='guanli31.jsp'>");
	out.print("课程代号："+"<input type='text' name='id' value='"+student.getid()+"'><br>");
	out.print("课程名："+"<input type='text' name='id1' value='"+student.getname()+"'><br>");
	out.print("任课老师："+"<input type='text' name='id2' value='"+student.getcollege()+"'><br>") ;
	out.print("上课时间："+"<input type='text' name='id3' value='"+student.getxi()+"'><br>");	
	out.print("上课地点："+"<input type='text' name='id4' value='"+student.getbanji()+"'><br>");
	out.print("<input type='submit' name='提交' value='提交'>");
 	out.print("</form><br>");
    }
 rs.close();
 statement.close();
 connection.close();}
 %>

</body>
</html>