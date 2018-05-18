<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: antonio
  Date: 18-5-4
  Time: 上午10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/mytag" prefix="mytag"%>
<%--@@那些是为了给标签指定调用路径--%>
<html>
  <head>
    <title>$Title$</title>
  </head>

  <body>
  $END$
  <mytag:hello/>

  <%
      List<String> a = new ArrayList<String>();
      a.add("hello") ;
      a.add("js") ;

      pageContext.setAttribute("a", a);

  %>

  <table cellspacing="0" cellpadding="0" width="300">
      <mytag:iterator myList = "${pageScope.a}" item="kk" >
          <tr>
              <td>${kk}</td>
          </tr>
      </mytag:iterator>
  </table>

  </body>
</html>
