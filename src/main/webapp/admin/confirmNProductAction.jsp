<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%

     String product_idd=request.getParameter("id");

    String statu="Yes";
    try{

        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps2=con.prepareStatement("update product2 set statu=?  where id='"+product_idd+"' ");
        ps2.setString(1,statu);

        ps2.executeUpdate();
        response.sendRedirect("confirmNProduct.jsp?msg=exist");

    }


catch(Exception e)
        {
            System.out.println(e);
            response.sendRedirect("confirmNProduct.jsp?msg=invalid");
        }
%>

