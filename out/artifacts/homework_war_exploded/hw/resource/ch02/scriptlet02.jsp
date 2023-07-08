<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/14
  Time: 10:06 AM
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
    <%
        for (int i = 0; i <= 10; i++) {
            if (i % 2 == 0)
                out.println(i + "<br>");
        }
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
