<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <title>Welcome</title>
</head>
<body>

    <%@ include file="menu.jsp" %>
    <%!
        String greeting="도서 쇼핑몰에 오신 것을 환영합니다.";
        String tagline="Welcome to Market!";
    %>
<nav class="navbar navbar-expand navbar-dark bg-dark">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="./welcome.jsp">Home</a>
        </div>
    </div>
</nav>
<%--센터에  출력되는  글  --%>
<div class="container">
    <div class="text-center">
        <h3>
            <%=tagline %>
        </h3>
        <%
            response.setIntHeader("Refresh", 5);
            Date day= new java.util.Date();
            String am_pm;
            int hour=day.getHours();
            int min=day.getMinutes();
            int second=day.getSeconds();
            if(hour/12==0)
                am_pm="AM";
            else am_pm="PM";
            hour=hour-12;
            String CT=hour+":"+min+":"+second+" "+am_pm;
            out.println("현재 접속 시각:" +CT+"\n");
        %>
    </div>
    <hr>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>

