import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.connection.DatabaseConnection; // Adjust package as per your project structure

@WebServlet("/InsertOrderServlet")
public class InsertOrderServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        try {
            Connection con = DatabaseConnection.initializeDatabase(); // Adjust method as per your connection setup

            // Prepare the SQL statement
            String query = "INSERT INTO tblorders (customer_id, customer_name, mobile_number, email_id, address, address_type, pincode, order_status, order_date, payment_mode, payment_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pstmt = con.prepareStatement(query);

            // Set values for parameters based on your request data
            pstmt.setString(1, request.getParameter("customerId"));
            pstmt.setString(2, request.getParameter("customerName"));
            pstmt.setString(3, request.getParameter("mobileNumber"));
            pstmt.setString(4, request.getParameter("emailId"));
            pstmt.setString(5, request.getParameter("address"));
            pstmt.setString(6, request.getParameter("addressType"));
            pstmt.setString(7, request.getParameter("pincode"));
         
         
            pstmt.setString(14, request.getParameter("orderStatus"));
            pstmt.setString(15, request.getParameter("orderDate"));
            pstmt.setString(16, request.getParameter("paymentMode"));
            pstmt.setString(17, request.getParameter("paymentId"));

            // Execute the insert query
            int rowsAffected = pstmt.executeUpdate();

            if (rowsAffected > 0) {
                out.println("Order data inserted successfully!");
            } else {
                out.println("Failed to insert order data!");
            }

            pstmt.close();
            con.close();
        } catch (SQLException e) {
            out.println("Error: " + e.getMessage());
        }
    }
}
