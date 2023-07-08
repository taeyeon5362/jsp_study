<%@ page import="java.util.Locale" %>
<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/09
  Time: 8:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>

    <h4>현재 로케일</h4>
    <%
        Locale locale = request.getLocale();
    %>
    <p> 언어 : <%=locale.getLanguage() %>
    <p> 국가 : <%=locale.getCountry() %>

</body>
</html>
