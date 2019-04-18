<%-- 
    Document   : update
    Created on : Apr 18, 2019, 4:23:36 PM
    Author     : Asaduzzaman Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" url="jdbc:mysql://localhost/rony"
                           user="root" password="1234"/>
        <sql:query dataSource="${db}" var="result">
            select * from product where id=?;
            <sql:param value="${param.id}"/>
        </sql:query>
        <form action="updateDb.jsp" method="post">
            <table border="0" width="40%">
                <caption>Update Product</caption>
                <tr>
                    <th>Product Name</th>
                    <th>Product Quantity</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><input type="hidden" value="${param.id}" name="id"/>
                            <input type="text" value="${row.pname}" name="pname"/></td>
                        <td><input type="text" value="${row.quantity}" name="qty"</td>
                        <td><input type="submit" value="Update"</td>
                    </tr>
                </c:forEach>
            </table>
            <a href="index.jsp">Go Home</a>
        </form>

    </body>
</html>
