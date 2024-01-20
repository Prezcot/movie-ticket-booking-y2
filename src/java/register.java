import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet(urlPatterns={"/register"})

public class register extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out =response.getWriter();     
        String UserName  = request.getParameter("username");
        String  Password  = request.getParameter("password");
        String  Email  = request.getParameter("email");
        try{
            
            Connection con;
            Statement st;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_database","root","");
            System.out.println("Connected Register Servlet");
            
            String query1="select * from users";
            st = con.createStatement();
            rs = st.executeQuery(query1);
            
            int found=0;
            while (rs.next()){  
             
                    if (UserName.equals(rs.getString(1))){
                        found=1;
                        break;
                    }
                }
           
           if (found==0)
           {
           String query = "insert into users values(?,?,?)";
           PreparedStatement ps = con.prepareStatement(query);
           ps.setString(1, UserName);
           ps.setString(2,Password);
           ps.setString(3, Email);
           ps.executeUpdate();
           response.sendRedirect("login.jsp");
           }
           else
           {
               out.println("<script>");
               out.println("alert('Account with username already exists !');");
               out.println("window.location.replace('register.jsp');");  
               out.println("</script>");   
           }  
         }
          catch(Exception e){
            System.out.println("Error ::"+e.getMessage());
        }   
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
