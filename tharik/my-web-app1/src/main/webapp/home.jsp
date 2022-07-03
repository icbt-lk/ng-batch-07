<%-- 
    Document   : home
    Created on : Jul 3, 2022, 12:21:02 PM
    Author     : tharik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="lk.icbt.src.Util" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (!Util.authenticate(username, password)) {
                response.sendRedirect("login.jsp");
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
