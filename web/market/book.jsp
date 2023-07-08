<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <title>도서 정보</title>
    <script type="text/javascript">
        function addToCart(){
            if(confirm("상품을 장바구니에 추가하시겠습니까?")){
                document.addForm.submit();
            }else {
                document.addForm.reset();
            }
        }
    </script>
</head>
<body>
    <jsp:include page="menu.jsp"></jsp:include>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3">도서 정보</h1>
        </div>
    </div>
    <%
        String id = request.getParameter("id");
        BookRepository dao = BookRepository.getInstance();
        Book book = dao.getBookById(id);
    %>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <img src="./resources/images/<%=book.getFilename()%>" style="width: 100%">
            </div>
            <div class="col-md-6">
                <h3><%=book.getName()%></h3>
                <p><%=book.getDescription()%></p>
                <p> <b>도서 코드 : </b> <span class="badge badge-primary"><%=book.getBookId()%></span></p>
                <p> <b>출펀사 : </b> <%=book.getPublisher()%></p>
                <p> <b>저자 : </b> <%=book.getAuthor()%></p>
                <p> <b>재고 수 : </b> <%=book.getUnitInStock()%>
                <p> <b>총 페이지 수: </b> <%=book.getTotalPages()%></p>
                <p> <b>출판일 : </b> <%=book.getReleaseDate()%></p>
                <h4><%=book.getUnitPrice()%>원</h4>
                <p> <form name="addForm" action="addCart.jsp?id=<%=book.getBookId()%>" method="post">
                        <a href="#" class="btn btn-info" onclick="addToCart()">도서주문&raquo;</a>
                        <a href="./cart.jsp" class="btn btn-warning">장바구니&raquo;</a>
                        <a href="./books.jsp" class="btn btn-secondary">도서목록 &raquo;</a>
                    </form>
                </p>
            </div>
        </div>
        <hr>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
