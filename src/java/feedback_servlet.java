/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.mail.MessagingException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.codejava.email.EmailUtility;

/**
 *
 * @author chari
 */
@WebServlet(urlPatterns = {"/feedback_servlet"})
public class feedback_servlet extends HttpServlet {


    
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
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet feedback_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet feedback_servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        HttpSession session=request.getSession(false);

        String recipient = "charith1542@outlook.com"; //for now all confirmation emails will go to this email.
        String message = request.getParameter("message");
        
        String subject = (String)session.getAttribute("email") + "  " + (String)request.getParameter("subject");
        
        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    message);
            String resultMessage = "Thank you for your feedback !";
        } catch (MessagingException ex) {
            String resultMessage = "There was an error: " + ex.getMessage();
        } finally {
            response.sendRedirect("home.jsp");
        }
    }


}
