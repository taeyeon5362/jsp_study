<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/15
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="EUC-KR">
    <title>Scripting Tag</title>
</head>
<body>

Current Time :
<%= new java.util.Date(java.util.Calendar.getInstance().getTimeInMillis()) %>

</body>
</html>
