<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/22
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Directives Tag</title>
</head>
<body>
    <c:forEach var="k" begin="0" end="10" step="2">
        <c:out value ="${k}" />
    </c:forEach>
</body>
</html>
