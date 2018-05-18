<%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-4-20
  Time: 上午10:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Cal_Numbers</title>
</head>
<body>
    <%
        String number1 = request.getParameter("number1");
        String number2 = request.getParameter("number2") ;
        String select = request.getParameter("select") ;
        String result = request.getParameter("result") ;

        if (number1 == null || number2 == null || select == null || result == null){
            number1 = "";
            number2 = "" ;
            select = "+" ;
            result = "" ;
        }
    %>


    <form id="form1" name="form1" method="post" action="dojisuan.jsp">
        <label>
            <input type="text" name="number1" value="<%=number1%>">
        </label>

        <label>
            <select name="select">
                <option value="+" selected="selected">+</option>
                <option value="-" selected="selected">-</option>
                <option value="*" selected="selected">*</option>
                <option value="/" selected="selected">/</option>
            </select>

        </label>

        <label>
            <input type="text" name="number2" value="<%=number2%>">
        </label>

        =
        <label>
            <input type="text" name="result" value="<%=result%>">
        </label>

        <p>
            <label>
                <input type="submit" name="Submit" value="计算">
            </label>
        </p>
    </form>
</body>
</html>
