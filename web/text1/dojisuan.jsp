<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-4-20
  Time: 上午11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Do Do Do</title>
</head>
<body>
    <%
        double result = 0.0 ;
        String number1 = request.getParameter("number1") ;
        String number2 = request.getParameter("number2") ;
        String select = request.getParameter("select") ;

        if (number1 != "" && number2 != "" && select != ""){
            double num1 = Double.parseDouble(number1) ;
            double num2 = Double.parseDouble(number2) ;

            switch (select){
                case "+":
                    result = num1 + num2 ;
                    break;
                case "-":
                    result = num1 - num2 ;
                    break;
                case "*":
                    result = num1 * num2 ;
                    break;
                case "/":
                    result = num1 * 1.0 / num2 ;
                    break;
            }
        }

    %>

    <%--向前分派给jisuan JSP文件--%>
    <jsp:forward page="jisuan.jsp">
        <jsp:param name="number1" value="<%=number1%>"></jsp:param>
        <jsp:param name="number2" value="<%=number2%>"></jsp:param>
        <jsp:param name="result" value="<%=result%>"></jsp:param>
    </jsp:forward>

</body>
</html>
