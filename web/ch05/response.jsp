<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 2:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
    <% response.setIntHeader("Refresh", 5); %>
    <p>현재 시간은  <%= new java.util.Date(java.util.Calendar.getInstance().getTimeInMillis()) %>
    <p><a href="response_data.jsp">Google 홈페이지로 이동하기</a>
</body>
</html>
