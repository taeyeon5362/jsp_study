<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/09
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>
    <jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
    <p>한국 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"></fmt:formatDate></p>
    <p><fmt:timeZone value="America/New_York">
        뉴욕 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
    </fmt:timeZone></p>
    <p><fmt:timeZone value="Europe/London">
        런던 : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
    </fmt:timeZone></p>
</body>
</html>
