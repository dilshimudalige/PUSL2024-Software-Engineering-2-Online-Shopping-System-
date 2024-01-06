<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- Redesigned Header for the Admin/Seller -->
<html>
    <head>
      
       
        <script src="https://cdn.tailwindcss.com"></script>
        
    </head>
    <body>
<nav class="bg-green-500 p-4 ">
    <div class="container mx-auto flex flex-wrap justify-between items-center">
        <!-- Logo or Branding (You can replace this with your logo) -->
        <div class="text-2xl text-white font-bold">
            <a href="dashboard.jsp" class="text-white">
                Home
            </a>
        </div>

        <!-- Navigation Links with Icons -->
        <div class="flex items-center space-x-4 p-1 m-0.5 font-poppins">
            <a href="admin-add-product.jsp" class="flex items-center text-white"><i class="fas fa-plus-circle mr-1"></i> Add Product</a>
           
            <span class="hidden sm:inline">|</span>
            <a href="admin-all-orders.jsp" class="flex items-center text-white"><i class="fas fa-clipboard-list mr-1"></i> View All Orders</a>
            <span class="hidden sm:inline">|</span>
            <a href="admin-pending-orders.jsp" class="flex items-center text-white"><i class="fas fa-clock mr-1"></i> View Pending Orders</a>
            <span class="hidden sm:inline">|</span>
            <a href="admin-delivered-orders.jsp" class="flex items-center text-white"><i class="fas fa-truck mr-1"></i> View Delivered Orders</a>
            <span class="hidden sm:inline">|</span>
            <a href="admin-view-customers.jsp" class="flex items-center text-white"><i class="fas fa-users mr-1"></i> View Customers</a>
            <span class="hidden sm:inline">|</span>
            <a href="admin-logout.jsp" class="flex items-center text-white"><i class="fas fa-sign-out-alt mr-1"></i> LOGOUT</a>
        </div>
    </div>
</nav>

    </body>
</html>
