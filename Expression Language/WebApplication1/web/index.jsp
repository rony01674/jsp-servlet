<%-- 
    Document   : Index
    Created on : Apr 16, 2019, 5:27:33 PM
    Author     : Asaduzzaman Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="myBean" class="expressionLanguage.MyBean" scope="session"></jsp:useBean>
        ${20+5}
        ${myBean.name}
    </body>
</html>
