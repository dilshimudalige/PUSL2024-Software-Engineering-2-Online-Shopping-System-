import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class EmailServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String recipientEmail = request.getParameter("recipientEmail");
        String username = "greensupermarket32@hotmail.com"; // replace with your Hotmail/Outlook email
        String password = "greensupermarket1234"; // replace with your password

        // Recipient's email ID needs to be mentioned.
        String to = recipientEmail;

        // Sender's email ID needs to be mentioned
        String from = username;

        // Assuming you are sending email from Hotmail/Outlook
        String host = "smtp.office365.com";

        // Get system properties
        Properties properties = System.getProperties();

        // Setup mail server
        properties.setProperty("mail.smtp.host", host);
        properties.setProperty("mail.smtp.port", "587");
        properties.setProperty("mail.smtp.auth", "true");
        properties.setProperty("mail.smtp.starttls.enable", "true");

        // Get the default Session object.
        Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });

        try {
            // Create a default MimeMessage object.
            MimeMessage message = new MimeMessage(session);

            // Set From: header field of the header.
            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

            // Set Subject: header field
            message.setSubject("Payment Confirmation");

            // Now set the actual message
            message.setText("Dear User,\n\n"
                    + "Thank you for completing the payment. Your order has been placed successfully.\n\n"
                    + "Thank you for shopping with us!\n\n"
                    + "Best Regards,\n"
                    + "Online Shopping System");

            // Send message
            Transport.send(message);

            response.getWriter().write("Email sent successfully");
        } catch (MessagingException mex) {
            mex.printStackTrace();
            response.getWriter().write("Error sending email: " + mex.getMessage());
        }
    }
}
