<%-- 
    Document   : insertDb
    Created on : Apr 18, 2019, 4:04:38 PM
    Author     : Asaduzzaman Rony
--%>

<%@page import="java.io.*, java.util.*,java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${empty param.pname or empty param.qty}">
            <c:redirect url="insert.jsp">
                <c:param name="errMsg" value="Please Enter Product and Quantity"/>
            </c:redirect>
        </c:if>
        <sql:setDataSource var="db" url="jdbc:mysql://localhost/rony" user="root" password="1234"/>
        <sql:update dataSource="${db}" var="result">
            insert into product(pname, quantity) values(?,?);
            <sql:param value="${param.pname}"/>
            <sql:param value="${param.qty}"/>
        </sql:update>
        <c:if test="${result>=1}">
            <c:redirect url="insert.jsp">
                <c:param name="succMsg" value="Congratulations! Data Inserted Successfully."/>
            </c:redirect>
        </c:if>
    </body>
</html>
