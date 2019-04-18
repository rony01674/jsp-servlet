<%-- 
    Document   : insert
    Created on : Apr 17, 2019, 6:51:37 PM
    Author     : Asaduzzaman Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insertDb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Purchase Product</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Product Name</label></td>
                        <td><input type="text" name="pname"/></td>
                    </tr>
                    <tr>
                        <td><label>Quantity</label></td>
                        <td><input type="text" name="qty"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit"/></td>
                        <td><input type="reset" value="Reset"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        <font color="red">
        <c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}"/>
            <a href="index.jsp">Go Back</a>
        </c:if>
        </font>
        <font color="green">
        <c:if test="${not empty param.succMsg}">
            <c:out value="${param.succMsg}"/>
            <a href="index.jsp">Go Back</a>
        </c:if>
        </font>
    </body>
</html>
