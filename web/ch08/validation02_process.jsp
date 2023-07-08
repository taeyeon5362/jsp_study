<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/03
  Time: 1:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<body>
    <p>아이디: <%=request.getParameter("id") %>
    <p>비밀번호: <%=request.getParameter("passwd") %>
</body>
</html>
