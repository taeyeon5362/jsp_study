<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 10:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>주문 취소</title>
</head>
<body>
<jsp:include page="menu.jsp" />
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">주문 취소</h1>
    </div>
</div>
<div class="container">
    <h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
</div>
<div class="container">
    <p> <a href="./products.jsp" class="btn btn-secondary">&laquo; 상품 목록</a> </p>
</div>
</body>
</html>

