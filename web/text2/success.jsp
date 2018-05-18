<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-4-20
  Time: 上午11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        int count = ((Integer)session.getAttribute("count")).intValue() ;
        int num = ((Integer)session.getAttribute("save")).intValue();
        long startTime = session.getCreationTime() ;//session有这个函数吗
        long endTime = session.getLastAccessedTime() ;
    %>
<p>恭喜，正解如是</p>
<br>
<p>猜测次数:<%=count%></p>
<p>用时:<%=(endTime-startTime)/1000%>秒</p>
<p>谜题数字:<%=num%></p>
<p>如果您想继续游戏，必须关闭浏览器，重新开始哦，亲～</p>
</body>
</html>
