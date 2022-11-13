<%--
  Created by IntelliJ IDEA.
  User: launc
  Date: 2022-11-13
  Time: 오전 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%@ page import="java.sql.*,javax.sql.*,java.io.*,javax.naming.InitialContext,javax.naming.Context"%>
</head>
<body>
<%
    InitialContext initCx=new InitialContext();
    Context context=(Context) initCx.lookup("java:/comp/env");
    DataSource ds=(DataSource) context.lookup("jdbc/UserChat");
    Connection connection=ds.getConnection();
    Statement stmt=connection.createStatement();
    ResultSet resultSet=stmt.executeQuery("SELECT VERSION();");
    while (resultSet.next()){
        PrintWriter out1 = response.getWriter();
        out1.println("MySqlVersion"+resultSet.getString("version()"));
        System.out.println(resultSet.getString("version()"));
    }
    resultSet.close();
    stmt.close();
    connection.close();
    initCx.close();
%>
</body>
</html>
