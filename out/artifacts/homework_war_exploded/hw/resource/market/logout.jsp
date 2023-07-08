<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/16
  Time: 2:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WebMarket</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("addBook.jsp");
%>
</body>
</html>