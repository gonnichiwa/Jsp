<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% session.setAttribute("id", request.getParameter("id"));
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    System.out.println("입력받은 id = " + id);
    System.out.println("입력받은 password = " + pass);

%>
<html>
<head>
    <title>Session Login</title>
</head>
<body>
    <h3>로그인 되었습니다.</h3>
    <h3>로그인 아이디: <%= (String) session.getAttribute("id") %></h3>
    <a href="sessionLogout.jsp">로그아웃</a>

</body>
</html>
