<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String fileUploadPath = "/Users/gimtaeyeon/study/untitled/web/hw/resource";

    DiskFileUpload upload = new DiskFileUpload();

    upload.setSizeMax(1000000);
    upload.setSizeThreshold(4096);
    upload.setRepositoryPath(fileUploadPath);

    List items = upload.parseRequest(request);
    Iterator params = items.iterator();

    while (params.hasNext()) {
        FileItem item = (FileItem) params.next();
        String fileFieldName = item.getFieldName();
        String fileName = item.getName();
        String contentType = item.getContentType();

        fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
        long filesize = item.getSize();

        File file = new File(fileUploadPath + "/" + fileName);
        item.write(file);

        out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
        out.println("저장 파일 이름 : " + fileName + "<br>");
        out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
        out.println("파일 크기 : " + filesize);
    }
%>
</body>
</html>
