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
 String tableName="q" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 
 String id=request.getParameter("id");
 String name=request.getParameter("id1");
 name = new String(name.getBytes("iso8859-1"),"UTF-8");
 String age=request.getParameter("id2");
 String college=request.getParameter("id3");
 college = new String(college.getBytes("iso8859-1"),"UTF-8");
 String xi=request.getParameter("id4");
 xi = new String(xi.getBytes("iso8859-1"),"UTF-8");
 String banji=request.getParameter("id5");
 banji = new String(banji.getBytes("iso8859-1"),"UTF-8");
 String sql="UPDATE q SET  name='"+name+"',age="+age+",college='"+college+"',major='"+xi+"',class1='"+banji+"' WHERE id="+id;
 statement.executeUpdate(sql);
 
 sql="SELECT id,name,age,college,major,class1 FROM q WHERE id="+id;

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 
 out.print("修改后的信息：<br>");

 while(rs.next()) { 
	 student.setid(Double.parseDouble(rs.getString(1)));
	 student.setname((rs.getString(2)));
	 student.setAge(Double.parseDouble(rs.getString(3)));
	 student.setcollege((rs.getString(4)));
	 student.setxi((rs.getString(5)));
	 student.setbanji((rs.getString(6)));
	out.print("&nbspid&nbsp"+"&nbsp;"+student.getid()+"<br>");
	out.print("name："+student.getname()+"<br>");
	out.print("age&nbsp;&nbsp;"+student.getAge()+"<br>") ;
	out.print("学院："+student.getcollege()+"<br>") ;
	out.print("系&nbsp;"+student.getxi()+"<br>");	
	out.print("班级："+student.getbanji()+"<br>");

    }
 rs.close();
 statement.close();
 connection.close();
 %>

</body>
</html>