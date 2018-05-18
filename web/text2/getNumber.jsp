<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-4-20
  Time: 上午11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>得到Get</title>
</head>
<body>
    <p>随机分配1-100的幸运数字</p>
    <%--在输入猜测数字的时候，随机生成一个数，而不是在后台随机匹配一个数--%>
    <%
        int number = (int)(Math.random()*100)+1 ;//1-100
        session.setAttribute("count", new Integer(0));
        session.setAttribute("save", new Integer(number));
    %>
    <p>请输入你的心中所想</p>
    <form action="result.jsp" method="post" name="form">
        <input type="text" name="boy">
        <input type="submit" value="送出" name="submit">
    </form>
</body>
</html>
