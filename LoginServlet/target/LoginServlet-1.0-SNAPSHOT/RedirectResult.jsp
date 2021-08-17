<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-17
  Time: 오후 4:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String key1 = request.getParameter("key1");
    String key2 = request.getParameter("key2");
%>
RedirectResult.jsp입니다.<br/>
key1 = <%= key1%>
key2 = <%= key2%>
</body>
</html>
