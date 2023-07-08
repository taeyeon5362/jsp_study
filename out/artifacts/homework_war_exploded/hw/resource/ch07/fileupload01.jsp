<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/27
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Upload</title>
</head>
<body>
    <form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload01_process.jsp">
        <p> 파일: <input type="file" name="filename">
        <p> <input type="submit" value="파일 올리기">
    </form>
</body>