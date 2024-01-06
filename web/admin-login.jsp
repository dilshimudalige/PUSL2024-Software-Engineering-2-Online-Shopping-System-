<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.connection.*"%>
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
            <script src="https://cdn.tailwindcss.com"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    </head>
    <body >
        <section class="menu-section" style="background: #52BE80">
            <div class="container" >
                <div class="row" >
                    <div class="col-md-12">
                        <div class="navbar-collapse collapse ">
                            <ul id="menu-top" class="nav navbar-nav navbar-right" >
                                <li><a href="index.jsp">Home</a></li>
                                <li><a href="admin-login.jsp">Admin Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="flex justify-center items-center h-screen ">
    <div class="w-full max-w-md p-8 bg-white rounded-lg shadow-lg">
        <h2 class="text-3xl font-bold text-green-700 mb-6 text-center">Sign in to Your Admin Account</h2>
                                <%
                                    //Connecting to the database
                                    Connection connection = DatabaseConnection.getConnection();
                                    Statement statement = connection.createStatement();
                                    String credential = (String) session.getAttribute("credential");
                                    //Checking creditionals whether there are null or not
                                    if (credential != null) {
                                        session.removeAttribute("credential");
                                %>
                                <div class="alert alert-danger" id="danger">You have enter wrong credentials.</div>
                                <%
                                    }
                                %>
                              
                                
                                  <form action="AdminLogin" method="post">
            <div class="mb-4">
                <label for="email" class="block text-sm font-semibold text-gray-700">Email:</label>
                <input type="text" id="email" name="email" class="w-full mt-1 p-2 border-solid border rounded border-green-600">
            </div>

            <div class="mb-4">
                <label for="password" class="block text-sm font-semibold text-gray-700">Password:</label>
                <input type="password" id="password" name="upass" class="w-full mt-1 p-2 border-solid border rounded border-green-600">
            </div>

            <div class="mb-6">
                <button type="submit" class="w-full p-2 bg-green-500 text-white rounded focus:outline-none hover:bg-green-700">
                   Admin Login
                </button>
            </div>
                                      <div class="flex">
   <input type="reset" value="Clear" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">

     <a href="/index.jsp" class="ml-2 bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
        Back
     </a>
</div>
 
        </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="assets/js/jquery-1.10.2.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/custom.js"></script>
    </body>
</html>