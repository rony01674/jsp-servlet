<%-- 
    Document   : index
    Created on : Apr 16, 2019, 5:46:57 PM
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
        <h1>Name ${param.fname}</h1>
        <h1>Age ${param.age}</h1>
        <form action="index.jsp" method="get">
            <input type="text" name="fname"/> 
            <input type="number" name="age"/> 
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
