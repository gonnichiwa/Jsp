<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie cookie = new Cookie("language", request.getParameter("language"));
    cookie.setMaxAge(60*60*24); // 1 day
    response.addCookie(cookie);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<script>
    location.href="cookieExample1.jsp";
</script>

</body>
</html>
