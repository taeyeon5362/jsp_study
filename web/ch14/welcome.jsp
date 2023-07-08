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
        Cookie[] userid = request.getCookies();

        if(userid[0] == null){
            response.sendRedirect("cookie_out.jsp");
        }
    %>

    <h3><%= userid[0].getName() %>님 반갑습니다.</h3>
    <a href="cookie_out.jsp">로그아웃</a>

</body>
</html>
