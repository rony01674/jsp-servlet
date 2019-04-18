<%-- 
    Document   : display
    Created on : Apr 17, 2019, 6:51:47 PM
    Author     : Asaduzzaman Rony
--%>

<%@page import="java.io.*,java.util.*,java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function confirmGo(m, u) {
                if (confirm(m)) {
                    window.location = u;
                }
            }
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display</title>
    </head>
    <body>
        <sql:setDataSource var="dbsource" url="jdbc:mysql://localhost/rony" user="root" password="1234"/>
        <sql:query dataSource="${dbsource}" var="result">
            select * from product;
        </sql:query>
    <center>
        <form>
            <table border="1" width="40%">
                <caption>Product List</caption>
                <tr>
                    <th>Product Id</th>
                    <th>Product Name</th>
                    <th>Product Quantity</th>
                    <th colspan="2">Action</th>
                </tr>
                <c:forEach var="row" items="${result.rows}">
                    <tr>
                        <td><c:out value="${row.id}"/></td>
                        <td><c:out value="${row.pname}"/></td>
                        <td><c:out value="${row.quantity}"/></td>
                        <td><a href="update.jsp?id=<c:out value="${row.id}"/>">Update</td>
                        <td><a href="javascript:confirmGo('Sure to delete this record?','deleteDb.jsp?id=<c:out value="${row.id}"/>')">Delete</a></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <a href="index.jsp">Go Home</a>

    </center>
</body>
</html>
