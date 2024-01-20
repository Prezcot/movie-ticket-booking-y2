/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/login_info"})
public class login_info extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
       
        PrintWriter out = response.getWriter();
        
        String user_name = request.getParameter("uname");
        String password = request.getParameter("pass");
        
        
        
       
        try{
        
        
            Connection con;
            Statement st;
            ResultSet rs;       
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie_database", "root", "");

            st = con.createStatement();
            
            System.out.println("Connected Login Part");
            
            String query = "select * from users";
            
            rs = st.executeQuery(query);
            
            int found = 0;
            while (rs.next()){  
             
                    if (user_name.equals(rs.getString(1)) && password.equals(rs.getString(2))){
                        found = 1;
                        HttpSession session=request.getSession();  
                        session.setAttribute("uname",user_name);
                        session.setAttribute("pass",password);
                        session.setAttribute("email",rs.getString(3));
                        
                        //setting the email in sessions
                        System.out.println(rs.getString(3));
                        //out.print("<script>alert('"+ rs +"');</script>");
                        response.sendRedirect("home.jsp");
                        break;
                    }
                    
        
                }
         
            if(found == 0){
                out.println("<script>");
                out.println("alert('Login Credentials Incorrect!!!');");
                out.println("window.location.replace('login.jsp');");
                out.println("</script>");               
            }
            

        }
        catch (Exception e){
            System.out.print(e.getMessage());
        }
    
    }



    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
