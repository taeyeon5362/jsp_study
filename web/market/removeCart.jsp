<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 10:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dao.BookRepository" %>
<%@ page import="dto.Book" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    if(id == null || id.trim().equals("")){
        response.sendRedirect("books.jsp");
        return;
    }
    BookRepository bookRepository = BookRepository.getInstance();

    Book book = bookRepository.getBookById(id);
    if(book == null){
        response.sendRedirect("exceptionNoBookId.jsp");
    }
    ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
    Book goodsQnt = new Book();
    for(int i =0; i<cartList.size();i++){
        goodsQnt = cartList.get(i);
        if(goodsQnt.getBookId().equals(id)){
            cartList.remove(goodsQnt);
        }
    }
    response.sendRedirect("cart.jsp");
%>
</body>
</html>

