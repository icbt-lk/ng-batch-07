<%-- 
    Document   : login
    Created on : Jul 3, 2022, 12:17:43 PM
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
        <form action="home.jsp" method="post">
            Username : <input type="text" name="username"/>
            Password : <input type="password" name="password"/>
            <input type="submit" value="Login">
        </form>
    </body>
</html>
