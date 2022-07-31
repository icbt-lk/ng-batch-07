<%-- 
    Document   : index
    Created on : Jul 24, 2022, 10:32:50 AM
    Author     : tharik
--%>

<%@page import="icbt.Student"%>
<%@page import="icbt.NewWebService"%>
<%@page import="icbt.NewWebService_Service"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <%
                int id = 1;
                
                if (request.getParameter("id") != null) {
                     id = Integer.parseInt(request.getParameter("id"));
                }
                
                NewWebService_Service service = new NewWebService_Service();
                NewWebService proxy = service.getNewWebServicePort();
                
//                String greeting = proxy.hello("John");
//                
//                out.print(greeting);
            %>
        </h1>
        <h1><%
                Student st = proxy.getStudent(id);
                out.print(st.getName());
            %></h1>
    </body>
</html>
