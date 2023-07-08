<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/10/27
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>

<html>
<head>
    <title>File Upload</title>
</head>
<body>
<%
    MultipartRequest multi = new MultipartRequest(request, "/Users/gimtaeyeon/study/untitled/web/hw/resource",
            5 * 1024 * 1024, "utf-8", new DefaultFileRenamePolicy());
    Enumeration params = multi.getParameterNames();

    while (params.hasMoreElements()) {
        String name = (String) params.nextElement();
        String value = multi.getParameter(name);
        out.println(name + " = " + value + "<br>");
    }

    Enumeration files = multi.getFileNames();
        while (files.hasMoreElements()) {
            String name = (String) files.nextElement();
            String filename = multi.getFilesystemName(name);
            String original = multi.getOriginalFileName(name);
            String type = multi.getContentType(name);
            File file = multi.getFile(name);

            out.println("요청 파라미터 이름 : " + name + "<br>");
            out.println("실제 파일 이름 : " + original + "<br>");
            out.println("저장 파일 이름 : " + filename + "<br>");
            out.println("파일 콘텐츠 유형 : " + type + "<br>");

            if (file != null) {
                out.println(" 파일 크기 : " + file.length());
                out.println("<br>");
            }
        }
%>
</body>
