<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:58 PM
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
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("books.jsp");
        return;
    }

    BookRepository bookRepository = BookRepository.getInstance();

    Book book = bookRepository.getBookById(id);
    if (book == null) {
        response.sendRedirect("exceptionNoBookId.jsp");
    }

    ArrayList<Book> goodsList = bookRepository.getAllBooks();

    Book goods = new Book();
    for (int i = 0; i < goodsList.size(); i++) {
        goods = goodsList.get(i);
        if (goods.getBookId().equals(id)) {
            break;
        }
    }
    ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
    if (list == null) {
        list = new ArrayList<Book>();
        session.setAttribute("cartlist", list);
    }
    int cnt = 0;
    Book goodsQnt = new Book();

    for (int i = 0; i < list.size(); i++) {
        goodsQnt = list.get(i);
        if (goodsQnt.getBookId().equals(id)) {
            cnt++;
            int orderQuantity = goodsQnt.getQuantity() + 1;
            goodsQnt.setQuantity(orderQuantity);
        }
    }
    if (cnt == 0) {
        goods.setQuantity(1);
        list.add(goods);
    }
    response.sendRedirect("book.jsp?id=" + id);
%>
</body>
</html>
