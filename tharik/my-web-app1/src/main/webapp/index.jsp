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
        
          <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap.min.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
    </head>
    <body> 
        <%
        Student[] student = Util.getStudents();

        out.print("<table id='students' class='table table-striped table-bordered' style='width:100%'>");
        out.print("<thead><tr><th>Student Number</th><th>Name</th></tr></thead>");
        out.print("<tbody>");
        for (Student st : student) {
            out.print("<tr>");
            out.print("<td>" + st.getNo() + "</td>");
            out.print("<td>" + st.getName() + "</td>");
            out.print("</tr>");

        } 
        out.print("</tbody>");
        out.print("</table>");
        %>
        <script>
            $(document).ready(function () {
                $('#students').DataTable();
            });
        </script>
    </body>
</html>
