<%@ page import="java.util.Enumeration" %>
<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/12
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form Processing</title>
</head>
<body>
    <%
        Enumeration paraNames = request.getParameterNames();
        while(paraNames.hasMoreElements()){
            StringBuffer text = new StringBuffer((String)paraNames.nextElement());
            out.println(text + " : ");

            String value = request.getParameter(text.toString());
            out.println(value+"<br>");
        }
    %>

</body>
</html>
