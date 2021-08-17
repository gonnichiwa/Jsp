<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: keept
  Date: 2021-08-17
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    String driver="org.mariadb.jdbc.Driver";
    String url = "jdbc:mariadb://localhost:3306/dgd";
    Boolean connection = false;

    try {
        Class.forName(driver);
        conn = DriverManager.getConnection(url, "root", "0000");

        connection = true;
        conn.close();
    } catch (Exception e){
        e.printStackTrace();
    }
%>

<% if(connection) { %>
    연결 하였음.
<% } else { %>
    연결에 실패했음.
<% } %>
</body>
</html>
