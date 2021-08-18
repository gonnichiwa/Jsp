<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Cookie cookie = new Cookie("name", "hongkildong");
    /*
    * setMaxAge(int expiry)
          Sets the maximum age of the cookie in seconds.
    * https://tomcat.apache.org/tomcat-5.5-doc/servletapi/javax/servlet/http/Cookie.html
    * */
    cookie.setMaxAge(600);
    response.addCookie(cookie);
%>
<html>
<head>
    <title>Cookie Test</title>
    <h2><%= cookie.getName()%></h2>
    <h2><%= cookie.getValue()%></h2>
    <h2><%= cookie.getMaxAge()%></h2>
    <a href="cookieTest2.jsp">쿠키 값 불러오기</a>
</head>
<body>

</body>
</html>
