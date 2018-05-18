<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-5-16
  Time: 下午4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Bean.person" %>
<html>
<head>
    <title>统计当前浏览该页面的人数和姓名</title>
</head>
<body>
<p>统计当前浏览该页面的人数和姓名</p>
<%
    String name = request.getParameter("name");
    String count = request.getParameter("count") ;

    int num = Integer.parseInt(count) ;
%>

<jsp:useBean id="person" class="com.Bean.person" scope="session"/>
<%----%>
<%
    person.judge();//创建对象
    person.addPerson(name);//插入进去
    num++;
%>

<%
    if (name.length() > 10){

%>

<jsp:forward page="inputName.jsp"/>
<%
    }
%>

</body>
</html>
