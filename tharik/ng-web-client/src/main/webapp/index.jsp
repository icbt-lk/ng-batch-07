<%-- 
    Document   : index
    Created on : Jul 24, 2022, 10:32:50 AM
    Author     : tharik
--%>

<%@page import="lk.icbt.ng.web.client.UIUtils"%>
<%@page import="java.util.List"%>
<%@page import="icbt.Student"%>
<%@page import="icbt.NewWebService"%>
<%@page import="icbt.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
        <style>
            #result-section {
                padding-top: 30px;
                padding-right: 20px;
                padding-bottom: 30px;
                padding-left: 20px;
            }
            
            #control-section {
                padding-top: 30px;
                padding-right: 20px;
                padding-bottom: 30px;
                padding-left: 20px;
            }
            
            #edit-section {
                padding-top: 30px;
                padding-right: 20px;
                padding-bottom: 30px;
                padding-left: 20px;
            }
        </style>
    </head>
    <body>
        <div id='control-section'>
            <form action="index.jsp" method="post">
                Student ID : <input type="text" name="id"/>
                <input type="submit" value="Load">
            </form>
        </div>
        <div id='edit-section'>
                <form action="process_student.jsp" method="post">
                   Student ID : <input type="text" name="id"/>
                   Student Name : <input type="text" name="name"/>
                <input type="submit" value="Add">
            </form>
        </div>
        <div id='result-section'>
            <table id='students' class='table table-striped table-bordered' style='width:100%'>
                <thead><tr><th>Student ID</th><th>Student Name</th></tr></thead>
                <tbody>
                    <%                        
                        NewWebService_Service service = new NewWebService_Service();
                        NewWebService proxy = service.getNewWebServicePort();                        
                        if (request.getParameter("id") == null) {
                            for(Student st :  proxy.getStudents()) {
                                UIUtils.printStudentRows(st, out);
                             }
                        } else {
                            UIUtils.printStudentRows(proxy.getStudent(Integer.parseInt(request.getParameter("id"))), out);
                        }
                    %>
                </tbody>
            </table>
        </div>


        <script>
            $(document).ready(function () {
                $('#students').DataTable();
            });
        </script>
    </body>
</html>
