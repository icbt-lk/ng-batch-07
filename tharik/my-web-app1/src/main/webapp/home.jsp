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
                //Check for the cookie
                for(Cookie cookie : request.getCookies()) {
                    if (cookie.getName().equals("sesid")) {
                        username = (String)session.getAttribute(cookie.getValue());
                        if (username == null) {
                            response.sendRedirect("login.jsp");
                        }
                    }
                }                      
            } else {
                // Create session and cookie
                String sesid = "123";
                Cookie cookie = new Cookie("sesid", sesid);
                session.setAttribute(sesid, username);
                response.addCookie(cookie);
            }   
        %>
        <h1>Hello World!</h1>
    </body>
</html>
