<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-17
  Time: 오후 4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%
    String name = (String) request.getAttribute("name");
    String age = (String) request.getAttribute("age");
%>
forwardResult.jsp입니다.
이름 = <%= name%>
나이 = <%= age%>

</body>
</html>
