<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet"
        href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>상품목록</title>
</head>
<body>
  <jsp:include page="menu.jsp"/>
  <div class="jumbotron">
    <div class="container">
      <h1 class="display-3">상품 목록</h1>
    </div>
  </div>
  <%
    ProductRepository dao = ProductRepository.getInstance();
    ArrayList<Product>listOfProducts = dao.getAllProducts();
  %>
  <div class="container">
    <div class="row" align="center">
      <%
        for(int i =0;i<listOfProducts.size();i++){
          Product product = listOfProducts.get(i);

      %>
      <div class="col-md-4">
        <img src = "./resources/images/<%=product.getFilename()%>" style="width: 100%">
        <h3><%=product.getPname()%></h3>
        <p><%=product.getDescription()%></p>
        <p><%=product.getUnitPrice()%>원</p>
        <p> <a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상세 정보 &raquo</a> </p>
      </div>
      <%
        }
      %>
    </div>
    <hr style="border:grey 1px dashed">
  </div>
  <jsp:include page="footer.jsp"/>
</body>
</html>
