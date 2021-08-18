<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = "";
    String value = "";
    String cookie = request.getHeader("Cookie");
    if(cookie != null) {
        Cookie[] cookies = request.getCookies();
        for(Cookie c : cookies){
            if(c.getName().equals("name")){
                name = c.getName();
                value = c.getValue();
            }
        }
    }
%>
<html>
<head>
    <title>Cookie Test</title>
    <h2> 쿠키 이름 : <%= name  %>  </h2>
    <h2> 쿠키 값   : <%= value %> </h2>
</head>
<body>

</body>
</html>
