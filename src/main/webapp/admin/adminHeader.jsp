<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
          <%String email=session.getAttribute("email").toString();%>
            <center><h2>EVOLVE CONNECT</h2></center>
            <a href="confirmNProduct.jsp">confirm volunteer <i class='fas fa-plus-square'></i></a>
          <%-- <a href="allProductEditProduct.jsp">All Products & Edit Products <i class='fab fa-elementor'></i></a>--%>
            <a href="messagesReceived.jsp">Messages Received <i class='fas fa-comment-alt'></i></a>
            <a href="ordersReceived.jsp">Orders Received <i class="fas fa-archive"></i></a>
            <a href="">Cancellation <i class='fas fa-window-close'></i></a>
           <%-- <a href="">Delivered <i class='fas fa-dolly'></i></a>--%>
            <a href="../logout.jsp">Logout <i class='fas fa-share-square'></i></a>
        <div class="search-container">
            <form action="searchHOMEadmin.jsp"  method="post" >
                <input type="text" placeholder=" Search" name="search">
                <button type="submit"><i class="fa fa-search"></i></button>

            </form>


        </div>
          </div>
           <br>
           <!--table-->
