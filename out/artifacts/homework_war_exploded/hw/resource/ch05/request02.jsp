<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 9:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
    <%
        Enumeration en = request.getHeaderNames();
        while (en.hasMoreElements()) {
            String headerName = (String) en.nextElement();
            String headerValue = request.getHeader(headerName);
    %>
    <%=headerName%> : <%=headerValue%>
    <%
        }
    %>
</body>
</html>
