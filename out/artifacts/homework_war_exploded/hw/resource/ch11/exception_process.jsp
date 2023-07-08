<%@ page import="java.rmi.ServerException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="exception_error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("password");
    if(id.equals("") || pw.equals("")){
        throw new ServerException("");
    }else {
        out.println("아이디 : " + id +"<br>"+"비밀번호 : "+pw);
    }%>
</body>
</html>
