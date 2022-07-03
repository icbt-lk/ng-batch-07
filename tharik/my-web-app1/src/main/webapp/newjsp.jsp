<%-- 
    Document   : newjsp
    Created on : Jul 3, 2022, 12:12:43 PM
    Author     : tharik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String greeting = request.getParameter("greeting");        
            String name = request.getParameter("name");
            
            if (greeting == null) {
                greeting = "Hello";
            }
            
            if (name == null) {
                name = "World";
            }
        %>
        
        <h1><%out.print(greeting + " " + name);%>!</h1>
    </body>
</html>
