<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String user_id = request.getParameter("id");
        String user_pw = request.getParameter("passwd");

        if(user_id.equals("admin") && user_pw.equals("admin1234")){
            session.setAttribute("userID", user_id);
            response.sendRedirect("welcome.jsp");
        } else {
            out.println("세션 설정이 실패했습니다");
        }
    %>

</body>
</html>
