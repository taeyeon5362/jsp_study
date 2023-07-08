<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품ID 오류</title>
</head>
<body>
    <jsp:include page="menu.jsp" />
    <div class="jumbotron">
        <div class="container">
            <h2 class="alert alert-danger">해당 도서가 존재하지 않습니다.</h2>
        </div>
    </div>
    <div class="container">
        <p><%=request.getRequestURL()%>?<%=request.getQueryString()%></p>
        <p><a href="books.jsp" class="btn btn-secondary">도서목록&raquo;</a> </p>
    </div>
</body>
</html>
