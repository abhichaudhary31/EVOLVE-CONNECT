<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file ="header.jsp" %>
<%@include file ="footer.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="../css/addNewProduct-style.css">
    <title>BE A VOLUNTER </title>
</head>
<body>
<%
    String msg=request.getParameter("msg");
    if("done".equals(msg))
    {
%>
<h3 class="alert">thank you ! you will be soon added!</h3>
<%
    }

%>
<%
    if("wrong".equals(msg))
    {
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%
    }

%>





<%
    int id=1;
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement() ;
        ResultSet rs=st.executeQuery("select  max(id) from product2");
        while (rs.next())
        {
            id=rs.getInt(1);
            id=id+1;

        }

    }
    catch (Exception e)
    {}
%>
<form action="bevAction.jsp" method="post">
    <input type="hidden" name="id" value="<% out.println(id); %>" >


    <div class="left-div">
        <h3>Enter Name</h3>
        <input class="input-style"  type="text" name ="name"  placeholder="Enter Name" required>

        <hr>
    </div>

    <div class="right-div">
        <h3>Enter OCCUPATION</h3>
        <input class="input-style"  type="text" name ="occupation"  placeholder="Enter occupation" required>

        <hr>
    </div>

    <div class="left-div">
        <h3>Enter FEES</h3>
        <input class="input-style"  type="number" name ="fees"  placeholder="Enter fees" required>

        <hr>
    </div>

    <div class="right-div">
        <h3>location </h3>
        <input class="input-style"  type="text" name ="location"  placeholder="Enter location" required>

        <hr>
    </div>
    <div class="left-div">
        <h3>Enter Experience</h3>
        <input class="input-style"  type="number" name ="experience"  placeholder="Enter experience" required>

        <hr>
    </div>
        <hr>
    </div>
    <button class="button"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>