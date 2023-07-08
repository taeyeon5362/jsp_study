<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/15
  Time: 2:09 PM
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
    <% java.util.Date date = new java.util.Date(); %>
    Today : <% out.println(date); %>
    </body>
</html>
