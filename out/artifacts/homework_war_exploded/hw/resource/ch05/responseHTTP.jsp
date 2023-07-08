<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
    <%
        response.setHeader("Cache-control", "use_cache");
        response.addHeader("contentType", "text/html; charset=utf-8");
        response.setDateHeader("date",1L);
    %>
    cache-control : <%=response.getHeader("Cache-control")%><br>
    contentType : <%=response.getHeader("contentType")%><br>
    date : <%=response.getHeader("date")%>
</body>
</html>
