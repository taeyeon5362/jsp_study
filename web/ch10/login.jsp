<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/16
  Time: 2:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Security</title>
</head>
<body>
    <form name="loginForm" action="j_security_check" method="post">
        <p>사용자명 : <input type="text" name="j_username"></p>
        <p>비밀번호 : <input type="password" name="j_password"></p>
        <p> <input type="submit" value="전송"></p>
    </form>
</body>
</html>
