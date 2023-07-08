<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>오류 발생</h3>
<table border="1">
    <tr>
        <td>Error : </td>
        <td><%=exception.toString()%>: 오류발생!!!</td>
    </tr>
    <tr>
        <td>URI : </td>
        <td><%=request.getAttribute("javax.servlet.error.request_uri")%></td>
    </tr>
    <tr>
        <td>Status Code :</td>
        <td> <%= request.getAttribute("javax.servlet.error.status_code") %></td>
    </tr>
</table>
</body>
</html>
