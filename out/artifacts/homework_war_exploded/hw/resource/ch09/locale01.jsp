<%@ page import="java.util.Locale" %>
<%@ page import="java.text.DateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.NumberFormat" %><%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/09
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Internationalization</title>
</head>
<body>
    <h3>현재 로케일의 국가, 날짜, 통화</h3>
    <%
        Locale locale = request.getLocale();
        Date currentDate = new Date();
        DateFormat dateFormat_1 = DateFormat.getDateInstance(DateFormat.FULL, locale);
        DateFormat dateFormat_2 = DateFormat.getDateInstance(DateFormat.DATE_FIELD, locale);
        NumberFormat numberFormat = NumberFormat.getNumberInstance(locale);
        NumberFormat numberFormat_2 = NumberFormat.getCurrencyInstance(locale);
        NumberFormat numberFormat_3 = NumberFormat.getPercentInstance(locale);
    %>
    <p>국가 : <%=locale.getDisplayCountry()%>
    <p>언어 : <%=locale.getDisplayLanguage()%>
    <p>코드 : <%=locale.getCountry()%>
    <p>날짜 : <%=dateFormat_1.format(currentDate)%>
    <p>날짜 : <%=dateFormat_2.format(currentDate)%>
    <p>숫자 (12345.67) : <%=numberFormat.format(12345.67)%>
    <p>숫자 (12345.67) : <%=numberFormat_2.format(12345.67)%>
    <p>숫자 (12345.67) : <%=numberFormat_3.format(12345.67)%>
</body>
</html>
