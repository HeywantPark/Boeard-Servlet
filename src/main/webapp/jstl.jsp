
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <H1>JSTL 을 사용한 페이지</H1>

    <h2>조건 처리</h2>
    <c:if test="${condition}">
        <P>전달 받은 조건은 true</P>
    </c:if>
    <c:if test="${!condition}">
        <P>전달 받은 조건은 false</P>
    </c:if>

    <h2>list 컬렉션 출력</h2>
    <c:forEach var="item" items="${list}">
        <li>${item}</li>
    </c:forEach>

</body>
</html>
