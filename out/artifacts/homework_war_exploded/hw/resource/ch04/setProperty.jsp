<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/28
  Time: 11:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="person" class="ch04.com.dao.person" scope="request" />
    <jsp:setProperty name="person" property="id" value="20182005" />
    <jsp:setProperty name="person" property="name" value="홍길동" />
    <p>아이디 : <%out.println(person.getId()); %>
    <p>이름 : <%out.println(person.getName()); %>
</body>
</html>
