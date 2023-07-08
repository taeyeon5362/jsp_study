<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/03
  Time: 1:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<script type="text/javascript">
    function checkInfo(){
        var form= document.form;
        if(form.id.value=="")
        {
            alert("아이디를 입력해주세요");
            form.passwd.select();
            return;
        }
        else if(form.passwd.value=="")
        {
            alert("비밀번호를 입력해주세요");
            form.passwd.select();
            return;
        }
        if((form.passwd.value).search(form.id.value)>-1)
        {
            alert("비밀번호는 ID를 포함할 수 없습니다.");
            return;
        }
        form.submit();

    }
</script>
<body>
    <form action="validation01_process.jsp" name="form" method="post">
        <p> 아이디: <input type="text" name="id">
        <p> 비밀번호: <input type="text" name="passwd">
        <p> <input type="submit" value="전송" onclick="checkInfo()">
    </form>
</body>
</html>
