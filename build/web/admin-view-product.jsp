<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Importing all ui libs -->
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
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
      
         <div class="content-wrapper">
    <div class="container mx-auto">
        <div class="py-4">
            <h4 class="text-2xl font-bold mb-4">View Products</h4>
            <div class="bg-white overflow-x-auto rounded-lg shadow-md">
                <table class="min-w-full bg-white border border-gray-300">
                    <thead>
                        <tr>
                            <th class="py-2 px-4 border-b">ID</th>
                            <th class="py-2 px-4 border-b">Name</th>
                            <th class="py-2 px-4 border-b">Image</th>
                            <th class="py-2 px-4 border-b">Description</th>
                            <th class="py-2 px-4 border-b">MRP (Rs)</th>
                            <th class="py-2 px-4 border-b">Price (Rs)</th>
                            <th class="py-2 px-4 border-b">Date</th>
                            <th class="py-2 px-4 border-b">Status</th>
                            <th class="py-2 px-4 border-b">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            ResultSet rs = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                            while (rs.next()) {
                        %>
                        <tr>
                            <td class="py-2 px-4 border-b"><%=rs.getInt("id")%></td>
                            <td class="py-2 px-4 border-b"><%=rs.getString("name")%></td>
                            <td class="py-2 px-4 border-b"><img src="uploads/<%=rs.getString(7)%>"
                                    alt="Product Image" class="w-20 h-12 object-cover"></td>
                            <td class="py-2 px-4 border-b"><%=rs.getString("description")%></td>
                            <td class="py-2 px-4 border-b"><del><%=rs.getString("mrp_price")%></del></td>
                            <td class="py-2 px-4 border-b"><%=rs.getString("price")%></td>
                            <td class="py-2 px-4 border-b"><%=rs.getString("create_date")%></td>
                            <td class="py-2 px-4 border-b"><%=rs.getString("active")%></td>
                            <td class="py-2 px-4 border-b">
                                <a href="admin-edit-product.jsp?id=<%=rs.getInt("id")%>"
                                    class="bg-green-500 text-white py-1 px-3 rounded-full mr-2">Edit</a>
                                <a href="admin-delete-product.jsp?id=<%=rs.getInt("id")%>"
                                    class="bg-red-500 text-white py-1 px-3 rounded-full"
                                    onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


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