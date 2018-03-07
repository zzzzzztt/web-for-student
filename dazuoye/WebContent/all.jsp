
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>站点首页面</title>
<style type="text/css">
 body{    
      background-image: url(images/2.jpg);       
}    
#Container{
    width:1000px;
    margin: auto;  
}
#Header{
    height:80px;
    background:#093;
}
#logo{
    padding-left:0px;
    padding-top:0px;
    padding-bottom:10px;
   
}
#Content{
    height:600px;
    margin-top:20px;/*此处讲解margin的用法，设置content与上面header元素之间的距离*/   
}
#Left{
    height:400px;
    width:200px;
    margin:20px;/*设置元素跟其他元素的距离为20像素*/
    float:left;/*设置浮动，实现多列效果，div+Css布局中很重要的*/
    margin-left:10px;
}
#Main{
    height:400px;
    width:720px;
    margin:20px;/*设置元素跟其他元素的距离为20像素*/
    float:left;/*设置浮动，实现多列效果，div+Css布局中很重要的*/  
}
#Footer{
    height:40px;
    background:#0ff;
    margin-top:20px;
}
.Clear{
    clear:both;
}
</style>
</head>
<body>
     <div id="Container">
        <div id="Logo"><%@ include file="top.jsp"%></div>
        <div id="Content">
            <div id="Left"><jsp:include page="left.jsp"/></div>
            <div id="Main"></div>
        </div>
        <div id="footer"><%@ include file="footer.jsp"%></div>
     </div>
</body>
</html>

 