<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
    <%
      String id = request.getParameter("id");
      String pw = request.getParameter("passwd");

      if(id.equals("admin") && pw.equals("admin1234")){
        Cookie cookieID = new Cookie("admin", id);
        response.addCookie(cookieID);
        response.sendRedirect("welcome.jsp");
      }else{
        out.println("세션 연결에 실패했습니다.");
      }
    %>
  </body>
</html>
