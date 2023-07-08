<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2022/11/02
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Validation</title>
</head>
<script type="text/javascript">
    function checkMember() {

        var refExpId = /^[a-z|A-Z|ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
        var refExpName = /^[가-핳]*$/;
        var refExpPasswd = /^[0-9]*$/;
        var refExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
        var refExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

        var form = document.Member;

        var id = form.id.value;
        var name = form.name.value;
        var passwd = form.passwd.value;
        var phone = form.phone1.value+"-"+form.phone2.value+"-"+form.phone3.value;
        var email = form.email.value;

        if(!refExpId.test(id)) {
            alert("아이디는 문자로 시작해주세요!");
            form.id.select();
            return;
        }
        if(!refExpName.test(name)) {
            alert("이름은 한글만 입력해주세요!");
            return;
        }
        if(!refExpPasswd.test(passwd)) {
            alert("비밀번호는 숫자만 입력해주세요!");
            return;
        }
        if(!refExpPhone.test(phone)) {
            alert("연락처 입력을 확인해주세요!");
            return;
        }
        if(!refExpEmail.test(email)) {
            alert("이메일 입력을 확인해주세요!");
            return;
        }
        form.submit();
    }
</script>
<body>
    <h3>회원 가입</h3>
    <form action="validation05_process.jsp" name="Member" method="post">
        <p>아이디 : <input type="text" name="id"></p>
        <p>비밀번호 : <input type="password" name="passwd"></p>
        <p>이름 : <input type="text" name="name"></p>
        <p>연락처 : <select name="phone1">
            <option value="010">010</option>
            <option value="011">011</option>
            <option value="016">016</option>
            <option value="017">017</option>
            <option value="019">019</option>
        </select> - <input type="text" maxlength="4" size="4" name="phone2"> -
            <input type="text" maxlength="4" size="4" name="phone3">
        </p>
        <p>이메일 : <input type="text" name="email"></p>
        <p><input type="button" value="가입하기" onclick="checkMember()"></p>
    </form>
</body>
</html>
