<%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-18
  Time: 오전 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String language = "korea";
    String cookie = request.getHeader("Cookie");

    if(cookie != null) {
        Cookie[] cookies = request.getCookies();
        for(Cookie c : cookies){
            if(c.getName().equals("language")){
                language = c.getValue();
            }
        }
    }
%>
<html>
<head>
    <title>쿠키를 이용한 화면 설정 예제</title>
</head>
<body>
<% if(language.equals("korea")) { %>
<h3>안뇽 이것은 쿠키 예제야</h3>
<% } else { %>
<h3>hihi this is cookie example </h3>
<% }%>

<form action="cookieExample2.jsp" method="post">
    <input type="radio" name="language" value="korea"
      <% if(language.equals("korea")) {%>checked <%}%>/>한국어페이지 보기
    <input type="radio" name="language" value="english"
           <% if(language.equals("korea")) {%>checked<%}%>/>영어페이지 보기
    <input type="submit" value="설정"/>
</form>
</body>
</html>
