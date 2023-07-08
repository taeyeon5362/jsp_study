<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/14
  Time: 9:35 AM
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
    <%! int sum(int a, int b) {
        return a+b;
    }%>
    <%
        out.println("2 + 3 =" + sum(2, 3));
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
