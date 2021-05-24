<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String occupation=request.getParameter("occupation");
    String fees=request.getParameter("fees");
    String experience=request.getParameter("experience");
    String location=request.getParameter("location");
    String statu=request.getParameter("statu");
    try{
        Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("insert into product2 value(?,?,?,?,?,?,?)");
        ps.setString(1,id);
        ps.setString(2,name);
        ps.setString(3,occupation);
        ps.setString(4,fees);
        ps.setString(5,experience);
        ps.setString(6,location);
        ps.setString(7,statu);

        ps.executeUpdate();
        response.sendRedirect("bev.jsp?msg=done");

    }
    catch(Exception e)
    {
        response.sendRedirect("bev.jsp?msg=wrong");
    }
%>