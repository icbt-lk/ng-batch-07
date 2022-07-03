<%-- 
    Document   : index
    Created on : Jul 3, 2022, 10:55:52 AM
    Author     : tharik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="lk.icbt.src.Student" %>
<%@ page import="lk.icbt.src.Util" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%
        Student[] student = Util.getStudents();

        out.print("<table border='1'>");
        out.print("<tr><th>Student Number</th><th>Name</th></tr>");
        for (Student st : student) {
            out.print("<tr>");
            out.print("<td>" + st.getNo() + "</td>");
            out.print("<td>" + st.getName() + "</td>");
            out.print("</tr>");

        } 
        out.print("</table>");
        %>
    </body>
</html>
