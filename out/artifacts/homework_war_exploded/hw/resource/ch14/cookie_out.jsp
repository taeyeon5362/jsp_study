<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Cookie[] cookies = request.getCookies();
        cookies[0].setMaxAge(0);
        response.addCookie(cookies[0]);

        response.sendRedirect("cookie.jsp");
    %>
</body>
</html>
