<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/12
  Time: 12:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="dto.Book"%>
<%@ page import="dao.BookRepository"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String filename = "";
    String realFolder = "/Users/gimtaeyeon/study/untitled/web/market/resources/images";
    int maxSize = 10 * 1024 * 1024; //최대 업로드 크기(10M)
    String encType = "utf-8";  //인코딩 유형

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
            encType, new DefaultFileRenamePolicy());

    String bookId = multi.getParameter("bookId");
    String name = multi.getParameter("name");
    String unitPrice = multi.getParameter("unitPrice");
    String author = multi.getParameter("author");
    String publisher = multi.getParameter("publisher");
    String releaseDate = multi.getParameter("releaseDate");
    String totalPages = multi.getParameter("totalPages");
    String description = multi.getParameter("description");
    String category = multi.getParameter("category");
    String unitInStock = multi.getParameter("unitInStock");
    String condition = multi.getParameter("condition");

    Integer price;
    if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);

    long stock;
    if (unitInStock == null)
        stock = 0;
    else
        stock = Long.valueOf(unitInStock);

    long pages;
    if (totalPages.isEmpty())
        pages = 0;
    else
        pages = Long.valueOf(totalPages);

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);

    BookRepository dao=BookRepository.getInstance();

    Book newBook = new Book();
    newBook.setBookId(bookId);
    newBook.setName(name);
    newBook.setUnitPrice(price);
    newBook.setAuthor(author);
    newBook.setPublisher(publisher);
    newBook.setReleaseDate(releaseDate);
    newBook.setTotalPages(pages);
    newBook.setDescription(description);
    newBook.setCategory(category);
    newBook.setUnitInStock(stock);
    newBook.setCondition(condition);
    newBook.setFilename(fileName);

    dao.addBook(newBook);

    response.sendRedirect("books.jsp");

%>
</body>
</html>
