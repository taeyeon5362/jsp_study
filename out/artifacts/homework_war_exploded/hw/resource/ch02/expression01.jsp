<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/14
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scripting Tag</title>
    <%
        int count = 0;
    %>
</head>
<body>
    <p>
        Today's data:
        <%= new java.util.Date()%>
    </p>
    Page Count is
    <%= ++count %>

    <%-- JSP 주석처리 내용 / <!-- HTML 주석처리하는 방법 --> --%>
</body>
</html>
