<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/29
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="EUC-KR">
  <title>Action Tag</title>
</head>
<body>
  <h4>구구단 출력하기</h4>
  <jsp:include page="include_data.jsp">
    <jsp:param name="num" value="5"/>
  </jsp:include>
</body>
</html>
