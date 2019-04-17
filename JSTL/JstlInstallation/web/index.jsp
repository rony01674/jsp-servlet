<%-- 
    Document   : index
    Created on : Apr 17, 2019, 4:17:25 PM
    Author     : Asaduzzaman Rony
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><c:out value="JSTL is Working"/></h1>
        <c:url value="https://mvnrepository.com/artifact/jstl/jstl/1.2">
            <c:param name="isbn" value="123456"/>
        </c:url>
    </body>
</html>
