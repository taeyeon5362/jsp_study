<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/09
  Time: 9:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>
    <p>------기본 로케일-------
        <fmt:setBundle basename = "ch09.com.bundle.myBundle" var="resourceBundle" />
    <p> <fmt:message key="title" var="titleMsg" bundle="${resourceBundle}" />
        제목 : ${titleMsg}

    <p> <fmt:message key="username" var="userMsg" bundle="${resourceBundle}" />
        이름 : ${userMsg}
    <p>제목1 : ${titleMsg}
    <p>이름1 : ${userMsg}

    <p> <fmt:message key="password" var="pass" bundle="${resourceBundle}" />

    <p>------영문 로케일-------
    <fmt:setLocale value="en" />
    <fmt:setBundle basename = "ch09.com.bundle.myBundle" var="resourceBundle" />
    <p>제목 : <fmt:message key="title" bundle="${resourceBundle}" />
    <p>이름 : <fmt:message key="username" bundle="${resourceBundle}" />

    <p>------패스워드-------
        <fmt:setBundle basename = "ch09.com.bundle.myBundle" var="resourceBundle" />
        <p>패스워드 : <fmt:message key="password" bundle="${resourceBundle}" />
        <p>패스워드 : ${pass}
</body>
</html>
