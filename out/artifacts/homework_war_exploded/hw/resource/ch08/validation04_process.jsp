<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/02
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<body>
    <h3>입력에 성공했습니다.</h3>
    <%
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
    %>
    <p>아이디 : <%=id%></p>
    <p>비밀번호 : <%=passwd%></p>
</body>
</html>
