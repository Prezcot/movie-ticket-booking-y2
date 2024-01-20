import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

@WebServlet(urlPatterns = {"/cancel_booking"})
public class cancel_booking extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(false);  
        
        String uname = (String)session.getAttribute("uname");
        
        String seat_to_remove = request.getParameter("seat_to_remove");
        
        try
        {
            
            Connection con = null;
            Statement st = null;
            String query;
            String query1;
            String query2;
            ResultSet rs = null;
            Class.forName("com.mysql.jdbc.Driver");
            con  = (Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_database","root","");
            st = con.createStatement();

            
            query = "select * from reservations where seat_id="+ seat_to_remove + " AND user = '"+ uname +"';";
            
            rs = st.executeQuery(query);
            if (rs.next() == true){
                do{
                    
                    String thename = rs.getString(2);

                 
                    query1 = "update seats set seat_availability = 'seat' where id = " + seat_to_remove + ";";
                    query2 = "delete from reservations where seat_id=" + seat_to_remove + ";";
                    st.executeUpdate(query1);
                    st.executeUpdate(query2);

                    out.println("<script>");
                    out.println("alert('Your seat has been unreserved');");
                    out.println("window.location.replace('home.jsp')");
                    out.println("</script>");                       
                    break;

                    
          
                }
                while(rs.next());
                
            }
                
            else
            {
                    out.println("<script>");
                    out.println("alert('This user does not have any bookings');");
                    out.println("window.location.replace('home.jsp')");
                    out.println("</script>");
                    
            }
        
            
        
        }
        catch(Exception e){
            out.println(e);
        }
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

