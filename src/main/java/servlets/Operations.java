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
public class Operations extends HttpServlet{
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            
            User us= (User)request.getSession().getAttribute("current-user");
            System.out.println("Operations :-"+us.getUsername()+"--"+us.getPassword()+"--"+us.getBalance());
            UserDao dao= new UserDao(FactoryProvider.getFactory());
             User u=  dao.getUserByEmailPassword(us.getUsername(), us.getPassword());
             System.out.println("======="+u.getUsername()+"--"+u.getPassword()+"--"+u.getBalance());
              HttpSession hs = request.getSession();
                           
              String res=request.getParameter("check");
              if (res.equalsIgnoreCase("checkBalance")) {
                  System.out.println("---- Check Balance ----");
                  response.sendRedirect("checkBalance.jsp");
            }
              else if (res.equalsIgnoreCase("withdraw")) {
                System.out.println("---- Withdraw ----");
                response.sendRedirect("withdraw.jsp");
                  
            }
               else if (res.equalsIgnoreCase("fundTransfer")) {
                 System.out.println("---- Fund Transfer ----");
            }
               else if (res.equalsIgnoreCase("deposit")) {
                 System.out.println("---- Deposit ----");
                  response.sendRedirect("deposit.jsp");
            }
              
              
            
                     hs.setAttribute("current-user", u);
                     
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
