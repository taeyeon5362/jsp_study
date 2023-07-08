<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/28
  Time: 10:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Action Tag</title>
</head>
<body>
    <jsp:useBean id="person" class="ch04.com.dao.person" scope="request" />
    <p> 아이디 : <%=person.getId()%>
    <p> 이름 : <%=person.getName()%>
        <%
            person.setId(20182005);
            person.setName("홍길동");
        %>
    <jsp:include page="useBean03.jsp" />
</body>
</html>
