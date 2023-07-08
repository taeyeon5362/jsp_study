<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 10:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String id = request.getParameter("cartId");
        if(id == null || id.trim().equals("")){
            response.sendRedirect("cart.jsp");
            return;
        }
        session.invalidate();
        response.sendRedirect("cart.jsp");
    %>
</body>
</html>
