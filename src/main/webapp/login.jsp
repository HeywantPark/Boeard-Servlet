
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <h1>로그인</h1>
    <form method="get" action="login">
        <label for="username">아이디 : </label>
        <input type="text" id="username" name="username" required />
        <br />
        <label for="password">비밀번호 : </label>
        <input type="password" id="password" name="password" required />
        <br />
        <button type="submit">로그인</button>
    </form>
</body>
</html>
