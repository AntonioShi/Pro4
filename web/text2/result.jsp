<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-4-20
  Time: 上午11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String str = request.getParameter("boy");
        if (str==null)
            str="0";
        int guessNumber = Integer.parseInt(str);
        Integer integer = (Integer)session.getAttribute("save");
        int realNumber = integer.intValue();
        if (guessNumber == realNumber){
            int n = ((Integer)session.getAttribute("count")).intValue() ;
            n += 1 ;
            session.setAttribute("count", new Integer(n));
            response.sendRedirect("success.jsp");
        }
        else if (guessNumber > realNumber){
            int n = ((Integer)session.getAttribute("count")).intValue() ;
            n += 1 ;
            session.setAttribute("count", new Integer(n));
            response.sendRedirect("large.jsp");
        }
        else if (guessNumber < realNumber){
            int n = ((Integer)session.getAttribute("count")).intValue() ;
            n += 1 ;
            session.setAttribute("count", new Integer(n));
            response.sendRedirect("small.jsp");
        }
    %>
</body>
</html>
