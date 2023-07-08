<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/12
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Proccessing</title>
</head>
<body>
    <form name="enter" action="form01_process.jsp">
        <p> 이름 : <input type="text" name="name" >
        <p> 주소 : <input type="text" name="address">
        <p> 이메일 : <input type="text" name="email">
        <p> <input type="submit" value="전송">
    </form>
</body>
</html>
