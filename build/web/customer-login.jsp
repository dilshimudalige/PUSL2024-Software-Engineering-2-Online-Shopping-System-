<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script src="https://cdn.tailwindcss.com"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
    </head>
    <body>
       <div class="bg-green-500 p-4">
    <div class="container mx-auto">
        <div class="flex justify-between items-center">
            <div>
                <button type="button" class="text-white focus:outline-none">
                    <!-- Add your icon for the collapsed menu here -->
                    <span class="sr-only">Toggle navigation</span>
                    <!-- Example Font Awesome icon: <i class="fas fa-bars"></i> -->
                </button>
            </div>
            <jsp:include page="header.jsp"></jsp:include>
            <div class="flex items-center">
                <div class="cart box_1 bg-green-800 rounded-md">
                    <a href="checkout.jsp">
                        <%
                            ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                            resultCount.next();
                            int count = resultCount.getInt(1);
                        %>
                        <h3 class="text-white">
                            <i class="fas fa-shopping-cart" aria-hidden="true"></i>
                            (<%=count%> items)
                        </h3>
                    </a>
                    <p>
                        <a href="javascript:;" class="simpleCart_empty text-white">Empty Cart</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<br>

<div class="flex justify-center items-center h-screen ">
    <div class="w-full max-w-md p-8 bg-white rounded-lg shadow-lg">
        <h2 class="text-3xl font-bold text-green-700 mb-6">Sign in to Your Account</h2>

        <%-- Display error message if credentials are incorrect --%>
        <%
            String credential = (String) session.getAttribute("credential");
            if (credential != null) {
                session.removeAttribute("credential");
        %>
        <div class="bg-red-200 text-red-800 py-2 px-4 mb-4 rounded">
            You have entered wrong credentials.
        </div>
        <%
            }
        %>

        <form action="CustomerLogin" method="post">
            <div class="mb-4">
                <label for="email" class="block text-sm font-semibold text-gray-700">Email:</label>
                <input type="text" id="email" name="email" class="w-full mt-1 p-2 border-solid border rounded border-green-600">
            </div>

            <div class="mb-4">
                <label for="password" class="block text-sm font-semibold text-gray-700">Password:</label>
                <input type="password" id="password" name="password" class="w-full mt-1 p-2 border-solid border rounded border-green-600">
            </div>

            <div class="mb-6">
                <button type="submit" class="w-full p-2 bg-green-500 text-white rounded focus:outline-none hover:bg-green-700">
                    Login Now!
                </button>
            </div>
        </form>

        <p class="text-center text-gray-700">
            New to Smart Shop?
            <a href="customer-register.jsp" class="text-green-500 font-bold">Create an account</a>
        </p>
    </div>
</div>




        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>