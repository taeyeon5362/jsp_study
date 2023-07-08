<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  try{
    int a = 7;
    int b = 0;
    int c = a/b;
    out.println("a + b = " + c);
  }catch (ArithmeticException e){
    out.println("오류발생 : "+e.getMessage());
  }
%>
</body>
</html>
