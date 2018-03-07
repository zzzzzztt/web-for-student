<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page language="java" %> 
<%@ page import="com.mysql.jdbc.Driver" %> 
<%@ page import="java.sql.*" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%String id=request.getParameter("name2");

 String driverName="com.mysql.jdbc.Driver" ;   //jdbc连接
 String userName="root" ;
 String userPasswd="root"; 
 String dbName="lou" ;
 String tableName="q" ;
 String url="jdbc:mysql://127.0.0.1/"+dbName+"?user="+userName+"&password="+userPasswd;
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection=DriverManager.getConnection(url);
 Statement statement = connection.createStatement();
 if(id==null||"".equals(id))
	 	out.print("");
	 else{
 String sql="SELECT * FROM "+tableName+" WHERE id="+id;

 ResultSet rs = statement.executeQuery(sql);
 ResultSetMetaData rmeta = rs.getMetaData();
 int numColumns=rmeta.getColumnCount();
 response.setContentType("text/html;charset=UTF-8");
 if(!id.equals(null)){
 out.print("id&nbsp;&nbsp;&nbsp;&nbsp;"); 
 out.print("name&nbsp;&nbsp; ");
 out.print("age&nbsp;&nbsp;") ;
 out.print("数学"); 
 out.print("物理&nbsp;&nbsp;");
 out.print("学院 &nbsp;&nbsp;&nbsp;&nbsp;") ;
 out.print("系  &nbsp;&nbsp;&nbsp;&nbsp;"); 
 out.print("班级  ");
 out.print("<br>");}
 while(rs.next()) { 
	out.print(rs.getString(1)+"&nbsp;&nbsp;");
 	out.print(rs.getString(2)+"&nbsp;&nbsp;");
 	out.print(rs.getString(3)+"&nbsp;&nbsp;&nbsp;&nbsp;") ;
 	out.print(rs.getString(4)+"&nbsp;&nbsp;&nbsp;&nbsp;");
 	out.print(rs.getString(5)+"&nbsp;&nbsp;&nbsp;&nbsp;");
 	out.print(rs.getString(6)+"&nbsp;&nbsp;&nbsp;&nbsp;") ;
 	out.print(rs.getString(7)+"&nbsp;&nbsp;");
 	out.print(rs.getString(8));
 	out.print("<br>");
 }
 rs.close();
 statement.close();
 connection.close();}
 %>
</body>
</html>