<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <h1>순수 스크립틀렛으로 처리하는 페이지</h1>

    <h2>조건 처리</h2>
    <%
        Boolean condition = (Boolean)request.getAttribute("condition");
        if(condition) {
    %>
        <p>전달 받은 조건은 true</p>
    <%
        } else {
    %>
        <p>전달 받은 조건은 false</p>
    <%
        }
    %>

    <h2>list 컬렉션 출력하기</h2>
    <ul>
        <%
            List<String> items = (List<String>) request.getAttribute("list");
            if(items != null) {
                for(String item : items) {
        %>
            <li><%= item%></li>
        <%
            }
            }
        %>
    </ul>

</body>
</html>
