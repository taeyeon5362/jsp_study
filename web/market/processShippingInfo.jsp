<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/23
  Time: 10:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.net.URLEncoder" %>
<html>
<head>
    <title>shipping</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8");

        Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "UTF-8"));
        Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "UTF-8"));
        Cookie shippingDate = new Cookie("Shipping_shippingDate", URLEncoder.encode(request.getParameter("shippingDate"), "UTF-8"));
        Cookie country = new Cookie("Shipping_country", URLEncoder.encode (request.getParameter("country"), "UTF-8" ));
        Cookie zipCode = new Cookie("Shipping_zipCode", URLEncoder.encode(request.getParameter("zipCode"), "UTF-8"));
        Cookie addressName = new Cookie("Shipping_addressName", URLEncoder.encode(request.getParameter("addressName"), "UTF-8"));
        cartId.setMaxAge (24 * 60 * 60);
        name.setMaxAge(24 * 60 * 60);
        zipCode.setMaxAge(24 * 60 * 60);
        country.setMaxAge (24 * 60 * 60);
        addressName.setMaxAge(24 * 60 * 60);

        response.addCookie(cartId);
        response.addCookie(name);
        response.addCookie(shippingDate);
        response.addCookie(country);
        response.addCookie(zipCode);
        response.addCookie(addressName);

        response.sendRedirect("orderConfirmation.jsp");
    %>
</body>
</html>
