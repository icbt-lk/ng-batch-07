<%@page import="icbt.Student"%>
<%@page import="icbt.NewWebService_Service"%>
<%@page import="icbt.NewWebService"%>
<%
    NewWebService_Service service = new NewWebService_Service();
    NewWebService proxy = service.getNewWebServicePort();   

    Student st = new Student();
    st.setId(Integer.parseInt(request.getParameter("id")));
    st.setName(request.getParameter("name"));
    proxy.addStudent(st);
    response.sendRedirect("index.jsp");
%>