/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package servlets;

import com.mycompany.icinbanks.FactoryProvider;
import com.mycompany.icinbanks.UserDao;
import entity.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author a
 */
public class LoginServlet extends HttpServlet{
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
             String email= request.getParameter("email");
             System.out.println(email);
              String pass= request.getParameter("password");
              System.out.println(pass);
            UserDao dao= new UserDao(FactoryProvider.getFactory());
                  User u=  dao.getUserByEmailPassword(email, pass);
                    System.out.println("======="+u.getUsername()+"--"+u.getPassword()+"--"+u.getBalance());
                    HttpSession hs = request.getSession();
                            
                     if (u==null) {
               // out.println("<h1>Invalid details!!</h1>");
               hs.setAttribute("message", "Invalid details!! Try with another");
               response.sendRedirect("login.jsp");
               return;
            }else{
                     out.println("<h1>Welcome "+u.getUsername()+"</h1>");
                     
                     hs.setAttribute("current-user", u);
                     
                        
                         response.sendRedirect("user.jsp");
                         
                     }
            
            
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}