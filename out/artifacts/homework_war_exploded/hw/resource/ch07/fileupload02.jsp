<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/27
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>File upload</title>
</head>
<body>
<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload02_process.jsp">
    <p> 파일: <input type="file" name="filename">
    <p> <input type="submit" value="파일 올리기">

</form>
</body>
</html>