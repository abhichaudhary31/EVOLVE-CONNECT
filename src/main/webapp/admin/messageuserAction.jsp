<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String email=session.getAttribute("email").toString();
    try
    {

    response.sendRedirect("ordersReceived.jsp?msg=valid");

    }catch(Exception e)
    {
    System.out.println(e);
    response.sendRedirect("ordersReceived.jsp?msg=invalid");
    }
%>