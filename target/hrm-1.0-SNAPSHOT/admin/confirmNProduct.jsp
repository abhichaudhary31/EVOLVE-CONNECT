<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="adminHeader.jsp" %>
<%@include file ="../footer.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>confirm</title>
    <style>
        h3
        {
            color: yellow;
            text-align: center;
        }
    </style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">confirm volunteer <i class="fa fa-institution"></i></div>



<%
    String msg=request.getParameter("msg");
    if("exist".equals(msg))
    {%>
<h3 class="alert">ststus updated</h3>
<%

    }


%>
<%

    if("invalid".equals(msg))
    {%>
<h3 class="alert">something went wrong! try again </h3>
<%

    }


%>


<table>
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Occupation</th>
        <th scope="col"><i class="fa fa-inr"></i> fees</th>
        <th scope="col">experience</th>
        <th scope="col">location</th>
        <th scope="col"> current status</th>
        <th scope="col"> change status</th>
        <th scope="col"> update <i class='fas fa-cart-plus'></i></th>
    </tr>
    </thead>
    <tbody>
    <%
        try{
            Connection con=ConnectionProvider.getCon();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from product2  ");
            while(rs.next())
            {
    %>


    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><i class="fa fa-inr"></i><%=rs.getString(4)%> </td>
        <td><%=rs.getString(5)%></td>
        <td><%=rs.getString(6)%></td>
        <td><%=rs.getString(7)%></td>

        <td>  <input type="text" name="statu" placeholder=" change status" required>
        </select>
        </td>



        <td><a href="confirmNProductAction.jsp?id=<%=rs.getString(1)%>">confirm <i class='fas fa-cart-plus'></i></a></td>
    </tr>
    <%
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    %>
    </tbody>
</table>
<br>
<br>
<br>

</body>
</html>