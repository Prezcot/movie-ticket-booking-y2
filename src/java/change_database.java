

import java.io.IOException;
import java.io.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.codejava.email.EmailUtility;


@WebServlet(urlPatterns = {"/change_database"})
public class change_database extends HttpServlet {

   
        private String host;
        private String port;
        private String user;
        private String pass;

    
            @Override
    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }
        
        

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html; charset=utf-8");
        
        //processRequest(request, response);
        
        PrintWriter out = response.getWriter();
        
        String the_selected_seats = "";
        
        //String [] seat_availability = new String[8];

        

        HttpSession session=request.getSession(false);  //when taking data into a different servlet then you have to do getsession false 
        
        //basically what we are doing now is whatever seats the user chose we are going to update the database and the seats will have the users name in it and sessions make this possible as you can simply grab it
        //because we created a session in the login_info servlet.
        String uname = (String)session.getAttribute("uname");
        String password = (String)session.getAttribute("pass");
        String email = (String)session.getAttribute("email");
        
        
        
        for (int i = 1; i <= 8;i++){
            String seat_status_from_main_page = request.getParameter(Integer.toString(i)); //now this loop will go through all the hidden type inputs (using the name of the hidden type inputs)
            //out.print("Seat " + i + ": " + seat_status_from_main_page);
            
            
            if ("1".equals(seat_status_from_main_page)) //now this if statement will check if any of the hidden type inputs have a value of one(if user has selected that seat) and if so then following is done.
            {
                String query = "update seats set seat_availability = 'seat occupied' where id = " + i + ";"; //the seats the user has chosen is made unavailable in the database side to the main seat table.
                the_selected_seats = the_selected_seats + Integer.toString(i) + ", "; //this variable is used when the confirmation email is sent to the users email.
                
                try {
                    Connection con = null;
                    Statement st = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_database","root","");
                    st = con.createStatement();
   
                    st.executeUpdate(query);
                    query = "insert into reservations values(" + i  + ",'" + uname + "','" + password + "')"; //in the second table which is the reservations table the seats will have the users name and password associated with them.
                    st.executeUpdate(query);
                    
                }
                catch (SQLException e){
                    out.print(e);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(change_database.class.getName()).log(Level.SEVERE, null, ex);
                }
                 
            }
            
           
            
        }
        
         //sending the confirmation email to the customer
        
        //String senders_email = "somethingyes3@outlook.com";
        String recipient = null;
       

        recipient = email; //for now all confirmation emails will go to this email.
        String message = "Your seats are " + the_selected_seats;
        
        String subject = "Thank you for choosing ABCMovies.";
        
        try {
            EmailUtility.sendEmail(host, port, user, pass , recipient, subject,
                    message);
            String resultMessage = "The e-mail was sent successfully";
        } catch (MessagingException ex) {
            String resultMessage = "There was an error: " + ex.getMessage();
        } finally {
            out.println("<script>alert('Thank you for your purchase!!!');");
            out.println("window.location.replace('home.jsp');");
            out.println("</script>");
        }
        
}
    
    
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
