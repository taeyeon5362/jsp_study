<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/14
  Time: 9:40 AM
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
    <%!
       String makeItLower(String data) {
           return data.toLowerCase();
       }
    %>
    <%
        out.println(makeItLower("Hello World"));
    %>
    <p>
        Page Count is
        <%= ++count %>
    </p>

    <p>
        Today's data:
        <%= new java.util.Date()%>
    </p>
</body>
</html>
