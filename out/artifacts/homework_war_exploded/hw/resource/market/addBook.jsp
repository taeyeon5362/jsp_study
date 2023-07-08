<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/12
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "dto.Book" %>
<%@ page import="dao.BookRepository" %>
<html>
<head>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script type="text/javascript" src="resources/js/validation.js"></script>
    <title>도서 등록</title>
</head>
<body>
    <fmt:setLocale value='<%= request.getParameter("language")%>' />
    <fmt:bundle basename="bundle.book" >
    <jsp:include page="menu.jsp"/>
    <div class="jumbotron">
        <div class="container">
            <h1 class="display-3"><fmt:message key="title"/></h1>
        </div>
    </div>
    <div class="container">
        <div class="text-right">
            <a href="?language=ko" >Korean</a>|<a href="?language=en">English</a>
            <a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
        </div>
        <form name="newProduct" action="./processAddBook.jsp" enctype="multipart/form-data" class="form-horizontal" method="post">
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="bookId"/></label>
                <div class="col-sm-3">
                    <input type="text" id="bookId" name="bookId" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="name"/></label>
                <div class="col-sm-3">
                    <input type="text" id="name" name="name" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="unitPrice"/></label>
                <div class="col-sm-3">
                    <input type="text" id="unitPrice" name="unitPrice" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="author"/></label>
                <div class="col-sm-3">
                    <input type="text" name="author" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="publisher"/></label>
                <div class="col-sm-3">
                    <input type="text" name="publisher" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="releaseDate"/></label>
                <div class="col-sm-3">
                    <input type="text" name="releaseDate" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="totalPages"/></label>
                <div class="col-sm-3">
                    <input type="text" name="totalPages" class="form-control">
                </div>
            </div>

            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="description"/></label>
                <div class="col-sm-5">
                    <textarea name="description" cols="50" rows="2" class="form-control"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="category"/></label>
                <div class="col-sm-3">
                    <input type="text" name="category" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="unitsInStock"/></label>
                <div class="col-sm-3">
                    <input type="text" id="unitInStock" name="unitInStock" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="condition"/></label>
                <div class="col-sm-5">
                    <input type="radio" name="condition" value="New "><fmt:message key="condition_New"/>
                    <input type="radio" name="condition" value="Old"> <fmt:message key="condition_Old"/>
                    <input type="radio" name="condition" value="Refurbished"> <fmt:message key="condition_Refurbished"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2"><fmt:message key="bookImage"/></label>
                <div class="col-sm-5">
                    <input type="file" name="bookImage" class="form-control">
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-offset-2 col-sm-10">
                    <input type="button" class="btn btn-primary" value="<fmt:message key="button"/>" onclick="CheckAddBook()">
                </div>
            </div>
        </form>
    </div>
    </fmt:bundle>
<jsp:include page="footer.jsp"/>
</body>
</html>
