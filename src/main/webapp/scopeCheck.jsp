
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
<h1>SCOPE=CHECK</h1>
    <h2>request 스코프</h2>
    <p>${request}</p>

    <h2>session 스코프</h2>
    <p>${session != null ? session : "없는데요"}</p>

    <h2>application 스코프</h2>
    <p>${application != null ? application : "없는데요"}</p>

    <h2>page 스코프</h2>
    <p>${page}</p>
</body>
</html>
