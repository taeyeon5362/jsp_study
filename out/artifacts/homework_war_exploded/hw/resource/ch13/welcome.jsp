<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String userid = (String)session.getAttribute("userID");

        if(userid == null){
            response.sendRedirect("session_out.jsp");
        }
    %>

    <h3><%=userid %>님 반갑습니다.</h3>
    <a href="session_out.jsp">로그아웃</a>
</body>
</html>
