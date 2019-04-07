<%-- 
    Document   : action
    Created on : Apr 7, 2019, 4:30:51 PM
    Author     : Asaduzzaman Rony
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Data Read From Index Page Form</h1>
        <%= "Name: " + request.getParameter("fname")%>
    </body>
</html>
