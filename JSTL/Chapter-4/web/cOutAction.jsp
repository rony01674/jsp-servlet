<%-- 
    Document   : cOutAction
    Created on : Apr 17, 2019, 6:32:42 PM
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
        <h1>Hello World!</h1>
        <c:out value="Good Afternoon!"/>
        <c:out value="${book.author.name}" default="Unknown"/>
    </body>
</html>
