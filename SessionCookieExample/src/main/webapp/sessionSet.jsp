<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.setAttribute("name", "Session Test!");
    session.setMaxInactiveInterval(3); // 단위 : 초.
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
<script>
    location.href="sessionTest.jsp";
</script>
</html>