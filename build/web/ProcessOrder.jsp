<%-- 
    Document   : ProcessOrder
    Created on : Jan 5, 2024, 8:40:42 PM
    Author     : Deelaka
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
 // Retrieve user and product data from the session or form parameters
    String customerName = request.getParameter("name");
    String mobileNumber = request.getParameter("phone");
    String emailId = request.getParameter("email");
    String address = request.getParameter("address");
    String addressType = request.getParameter("addressType");
    String pincode = request.getParameter("pincode");
    String productImage = request.getParameter("product_image"); // You may need to adjust this based on your form
    String productName = request.getParameter("product_name");
    int quantity = Integer.parseInt(request.getParameter("quantity"));
    double productPrice = Double.parseDouble(request.getParameter("product_price"));
    double productSellingPrice = Double.parseDouble(request.getParameter("product_selling_price"));
    double productTotalPrice = Double.parseDouble(request.getParameter("product_total_price"));
    String orderStatus = "Pending"; // Set the initial order status as needed
    String orderDate = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()); // Current date
    String paymentMode = request.getParameter("payment");
    int paymentId = Integer.parseInt(request.getParameter("payment_id"));

    // Generate an order number (You may need to implement your own logic)
    String orderNo = "ORD" + System.currentTimeMillis();

    // Database connection and insertion code
    Connection con = null;
    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Replace the URL, username, and password with your database connection details
        String url = "jdbc:mysql://localhost:3306/shoppingsystem";
        String username = "root";
        String password = "";

        // Establish the connection
        con = DriverManager.getConnection(url, username, password);

        // Insert order details into tblorders table
        String query = "INSERT INTO tblorders(order_no, customer_name, mobile_number, email_id, address, address_type, pincode, image, product_name, quantity, product_price, product_selling_price, product_total_price, order_status, order_date, payment_mode, payment_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        PreparedStatement pstmt = con.prepareStatement(query);

        pstmt.setString(1, orderNo);
        pstmt.setString(2, customerName);
        pstmt.setString(3, mobileNumber);
        pstmt.setString(4, emailId);
        pstmt.setString(5, address);
        pstmt.setString(6, addressType);
        pstmt.setString(7, pincode);
        pstmt.setString(8, productImage);
        pstmt.setString(9, productName);
        pstmt.setInt(10, quantity);
        pstmt.setDouble(11, productPrice);
        pstmt.setDouble(12, productSellingPrice);
        pstmt.setDouble(13, productTotalPrice);
        pstmt.setString(14, orderStatus);
        pstmt.setString(15, orderDate);
        pstmt.setString(16, paymentMode);
        pstmt.setInt(17, paymentId);

        pstmt.executeUpdate();
        pstmt.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    } finally {
        // Close the connection in the finally block to ensure it's closed even if an exception occurs
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>


    </body>
</html>
