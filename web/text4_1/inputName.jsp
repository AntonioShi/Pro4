<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-5-16
  Time: 下午4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>该页面有一个表单，用户通过该表单输入自己的姓名并提交给people.jsp页面。</title>
</head>
<body>
<%
    StringBuffer name;
    int count = 0 ;
    session.setAttribute("name", new StringBuffer(10));
    session.setAttribute("count", new Integer(count));
%>
<p>请输入姓名</p>
<form action="people.jsp" method="post" name="form">
    <input type="text" name="name">
    <input type="submit" value="送出" name="submit">
</form>

</body>
</html>
