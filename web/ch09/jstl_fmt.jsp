<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/09
  Time: 9:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>
    <fmt:setLocale value='<%=request.getParameter("language") %>' />
    <fmt:setBundle basename="ch09.com.bundle.myBundle" var="message" />
    <p><a href="?language=ko" >Korean</a>|<a href="?language=en">English</a>

    <form action="#" name="login_form">
        <p> <fmt:message bundle="${message}" key="id" />
            : <input type="text" name="id">

        <p>	<fmt:message bundle="${message}" key="password"/>
            : <input type="password" name="passwd">

        <p><fmt:message bundle="${message}" key="button" var="btn"/>
            <input type="submit" value=${btn}>
    </form>
</body>
</html>