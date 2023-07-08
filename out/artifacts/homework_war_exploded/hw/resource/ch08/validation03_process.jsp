<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/03
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<body>
    <%
        Enumeration e = request.getParameterNames();
        while(e.hasMoreElements()){
            String name = (String)e.nextElement();
            out.println(name + " = " + request.getParameter(name));
        }
    %>
</body>
</html>
