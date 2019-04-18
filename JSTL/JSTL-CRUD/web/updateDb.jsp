<%-- 
    Document   : updateDb
    Created on : Apr 18, 2019, 4:37:29 PM
    Author     : Asaduzzaman Rony
--%>

<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" url="jdbc:mysql://localhost/rony" user="root" password="1234"/>
        <sql:update dataSource="${db}" var="count">
            UPDATE product SET pname=?, quantity=?
            WHERE id='${param.id}';
            <sql:param value="${param.pname}"/>
            <sql:param value="${param.qty}"/>
        </sql:update>
        <c:if test="${count>=1}">
            <c:redirect url="display.jsp">
                <c:param name="succMsg" value="Congratulations! Data Inserted Successfully."/>
            </c:redirect>
<!--            <font size="5" color="green">
            Congratulations! Data Updated Successfully.
            </font>-->
            <a href="index.jsp">Go Home</a>
        </c:if>
    </body>
</html>
