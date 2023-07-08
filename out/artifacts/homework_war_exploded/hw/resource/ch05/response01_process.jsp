<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
  <%
    request.setCharacterEncoding("utf-8");
    String userid = request.getParameter("id");
    String password = request.getParameter("pass");
    if(userid.equals("관리자") && password.equals("1234")){
        response.sendRedirect("response01_success.jsp");
    } else {
        response.sendRedirect("response01_failed.jsp");
    }
  %>

</body>
</html>
