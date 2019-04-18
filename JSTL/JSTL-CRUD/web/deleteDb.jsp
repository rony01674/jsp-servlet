<%-- 
    Document   : deleteDb
    Created on : Apr 18, 2019, 4:48:17 PM
    Author     : Asaduzzaman Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page   import="java.io.*,java.util.*,java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" url="jdbc:mysql://localhost/rony" user="root" password="1234"/>
        <sql:update dataSource="${db}" var="count">
            delete from product where id = '${param.id}';
        </sql:update>
        <c:if test="${count>=1}">
            <font size="5" color="green">
            Congratulations ! Data deleted
            successfully.
            </font>
            <a href="index.jsp">Go Home</a>
        </c:if>
    </body>
</html>
