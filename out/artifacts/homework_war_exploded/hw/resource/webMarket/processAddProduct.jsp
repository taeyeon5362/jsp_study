
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setCharacterEncoding("utf-8");

        String realFolder = "/Users/gimtaeyeon/study/untitled/web/webMarket/resources/images";
        int maxSize = 10 * 1024 * 1024; //최대 업로드 크기(10M)
        String encType = "utf-8";  //인코딩 유형

        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize,
                encType, new DefaultFileRenamePolicy());


        String productId = multi.getParameter("productId");
        String name = multi.getParameter("name");
        String unitPrice = multi.getParameter("unitPrice");
        String description = multi.getParameter("description");
        String manufacturer = multi.getParameter("manufacturer");
        String category = multi.getParameter("category");
        String unitsInStock = multi.getParameter("unitsInStock");
        String condition = multi.getParameter("condition");

        Integer price;

        if (unitPrice.isEmpty())
            price = 0;
        else
            price = Integer.valueOf(unitPrice);

        long stock;

        if (unitsInStock==null)
            stock = 0;
        else
            stock = Long.valueOf(unitsInStock);

        Enumeration files = multi.getFileNames();
        String fname = (String) files.nextElement();
        String fileName = multi.getFilesystemName(fname);


        ProductRepository dao = ProductRepository.getInstance();

        Product newProduct = new Product();

        newProduct.setProductId(productId);
        newProduct.setPname(name);
        newProduct.setUnitPrice(price);
        newProduct.setDescription(description);
        newProduct.setManufacturer(manufacturer);
        newProduct.setCategory(category);
        newProduct.setUnitsInStock(stock);
        newProduct.setCondition(condition);
        newProduct.setFilename(fileName);

        dao.addProduct(newProduct);

        response.sendRedirect("products.jsp");
    %>
</body>
</html>
