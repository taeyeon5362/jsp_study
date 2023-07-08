<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/22
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.Math" %>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
    <p>
        현재 날짜 :
        <%= new java.util.Date()%>
    </p>

    <p>
        <% double result = Math.pow(5, 2); %>
        5의 제곱 :
        <%= result %>
    </p>
</body>
</html>
