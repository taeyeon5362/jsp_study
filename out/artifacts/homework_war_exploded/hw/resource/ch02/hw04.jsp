<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/09/15
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="EUC-KR">
        <title>Scripting Tag</title>
    </head>
    <%! String str = "Hello, Java Server Pages";
        String getString(String str)
        {
            return str;
        }
    %>
    <body>
    <% out.print(getString(str)); %>
    </body>
</html>