<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="css/font-awesome.css" rel="stylesheet" />
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body>
        <%
            //Checking whether admin in session or not
            if (session.getAttribute("uname") != null && session.getAttribute("uname") != "") {
        %>
        <jsp:include page="adminHeader.jsp"></jsp:include>
            <div class="content-wrapper">
    <div class="container mx-auto">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-4 p-4">
            <!-- Total Products -->
            <div class="bg-green-600 text-white p-6 rounded-lg">
                <i class="fas fa-history fa-5x mb-4"></i>
                <h3 class="text-3xl font-bold">
                    <%-- Count product query --%>
                    <%
                        ResultSet totalProduct = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblproduct");
                        totalProduct.next();
                        int allProducts = totalProduct.getInt(1);
                    %>
                    <%=allProducts%>
                </h3>
                <p class="text-sm">Total Products</p>
            </div>

            <!-- Total Customers -->
            <div class="bg-green-700 text-white p-6 rounded-lg">
                <i class="fas fa-users fa-5x mb-4"></i>
                <h3 class="text-3xl font-bold">
                    <%-- Count customer query --%>
                    <%
                        ResultSet totalCustomer = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcustomer");
                        totalCustomer.next();
                        int allCustomer = totalCustomer.getInt(1);
                    %>
                    <%=allCustomer%>
                </h3>
                <p class="text-sm">Total Customers</p>
            </div>

            <!-- Total Orders -->
            <div class="bg-green-800 text-white p-6 rounded-lg">
                <i class="fas fa-recycle fa-5x mb-4"></i>
                <h3 class="text-3xl font-bold">
                    <%-- Count orders query --%>
                    <%
                        ResultSet totalOrders = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblorders");
                        totalOrders.next();
                        int allOrders = totalOrders.getInt(1);
                    %>
                    <%=allOrders%>
                </h3>
                <p class="text-xl font-extrabold">Total Orders</p>
            </div>
        </div>
    </div>
                 <jsp:include page="admin-view-product.jsp"></jsp:include>
</div>
          
           
           
   <jsp:include page="footer.jsp"></jsp:include>
     
            <script src="assets/js/jquery-1.10.2.js"></script>
            <script src="assets/js/bootstrap.js"></script>
            <script src="assets/js/custom.js"></script>
        <%
            } else {
                response.sendRedirect("admin-login.jsp");
            }
        %>
    </body>
</html>