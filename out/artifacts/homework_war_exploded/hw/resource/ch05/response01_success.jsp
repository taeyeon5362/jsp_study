<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/05
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
  로그인을 성공했습니다!

  <p>아 페이지는 5초마다 새로고침 됩니다.</p>
  <%
      response.setIntHeader("Refresh", 5);
  %>
  <%
      out.println("오늘의 날짜 및 시각" + "<br>");
      out.println(java.util.Calendar.getInstance().getTime());
  %>
</body>
</html>
