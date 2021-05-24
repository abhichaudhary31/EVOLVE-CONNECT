<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="adminHeader.jsp" %>
<%@include file ="../footer.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Home</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>
<table>
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Occupation</th>
        <th scope="col"><i class="fa fa-inr"></i> Price</th>
        <th scope="col">location</th>
        <th scope="col">Experience</th>
        <th scope="col"> current status</th>
        <th scope="col"> change status</th>
        <th scope="col"> update <i class='fas fa-cart-plus'></i></th>

    </tr>
    </thead>
    <tbody>
    <%
        int z=0;
        try{
            String search=request.getParameter("search");

            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from product2 where name like '%"+search+"%' or occupation like '%"+search+"%'  or Location  like '%"+search+"%'  and  statu='Yes' ");
            while(rs.next())
            {
                z=1;


    %>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><i class="fa fa-inr"></i><%=rs.getString(4)%> </td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(7)%></td>

        <td>  <input type="text" name="statu" placeholder=" change status" required>
            </select>
        </td>



        <td><a href="confirmNProductAction.jsp?id=<%=rs.getString(1)%>">confirm <i class='fas fa-cart-plus'></i></a></td>
    </tr>
    <%
            }
        }
        catch (Exception e)
        {
            System.out.println(e);
        }
    %>

    </tbody>
</table>
<%if(z==0){%>
<h1 style="color:white; text-align: center;">Nothing to show</h1>
<%} %>
<br>
<br>
<br>
<div class="footer">
    <p>All right reserved by abhishek chaudhary</p>
</div>

</body>
</html>