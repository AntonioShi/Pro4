<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-5-4
  Time: 上午10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>太大啦</title>
</head>
<body>
<p>您输入的数字有点大哦，请再次尝试</p>
    <form action="result.jsp" method="get" name="form">
        <input type="text" name="boy">
        <input type="submit" value="送出" name="submit">
    </form>
</body>
</html>
