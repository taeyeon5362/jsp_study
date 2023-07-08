<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/19
  Time: 10:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>File Uplaod</title>
</head>
<body>
    <form action="fileupload03_process.jsp" method="post"
          enctype="multipart/form-data">
        <p> 이름 <input type="text" name="name">
        <p> 제목 <input type="text" name="subject">
        <p> 파일 <input type="file" name="filename">
        <p> <input type="submit" value="파일 올리기">
    </form>
</body>
</html>
