<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/22
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <p>
        현재 날짜 :
        <%= new java.util.Date()%>
    </p>
</body>
</html>
