<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/14
  Time: 9:28 AM
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
    <%! int data = 50; %>
    <%
        out.println("value of the variable is:" + data);
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
