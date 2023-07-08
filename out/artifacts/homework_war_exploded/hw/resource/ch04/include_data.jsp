<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/29
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Action Tag</title>
</head>
<body>
    <%
        int num = Integer.parseInt(request.getParameter("num"));

        for(int i = 1; i<10; i++){
            out.println(num + "x" + i + "=" + num * i + "<br>");
        }
    %>
</body>
</html>
