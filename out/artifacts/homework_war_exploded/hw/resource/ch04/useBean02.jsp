<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/28
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="bean" class="ch04.com.dao.Calculator" />
    <%
        int m = bean.process(5);
        out.print("5의 3제곱 : " + m);
    %>
</body>
</html>
