<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/12
  Time: 12:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Implicit Object</title>
</head>
<body>
    <p> 선택한 과일<br>
            <%
                String[] e = request.getParameterValues("check");
                for(int i=0; i<e.length; i++)
                    out.print(e[i] + " ");
            %>
</body>
</html>
