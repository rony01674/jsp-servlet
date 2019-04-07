<%-- 
    Document   : index
    Created on : Apr 7, 2019, 4:54:05 PM
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
        <h1>Hello World!</h1>
        <!--Declaration Tag--->
        <%!
            String fname = "Md";
            String lname = "BD";
        %>
        <!--Expression Tag--->
        <%= "First name: " + fname%>
        <!--Scriptlet Tag--->
        <%
            out.println("Last name: " + lname);
        %>
        <%
            int x = 10;
            int y = 5;
            int sum = x + y;

            out.print("Sum: " + sum);
        %>
        <%="Sum:::" + sum%>
        <%!
            int x = 20;
        %>
        <%="X: " + x%>
    </body>
</html>
