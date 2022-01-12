
package Servlet;

import Controller.BranchController;
import Model.BranchModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class BranchEditServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
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
        HttpSession session = request.getSession(true);
            
        if(session.getAttribute("auth") == null){
            response.sendRedirect("login");
        } else {
          try {
            String id = request.getParameter("id");
            
            BranchController bc = new BranchController();
            BranchModel model = bc.show(id);
            
            request.setAttribute("branch", model);
            
            RequestDispatcher dispatch = request.getRequestDispatcher("/branchEdit.jsp");
            dispatch.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BranchEditServlet.class.getName()).log(Level.SEVERE, null, ex);
        }  
        }
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
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String address = request.getParameter("address");
            String city = request.getParameter("city");
            String zip = request.getParameter("zip");
            String contact = request.getParameter("contact");
            String note = request.getParameter("note");
            
            BranchModel model = new BranchModel();
            model.setId(id);
            model.setName(name);
            model.setAddress(address);
            model.setCity(city);
            model.setZip(zip);
            model.setContact(contact);
            model.setNote(note);
            
            BranchController bc = new BranchController();
            boolean check = bc.update(model);
            
            if(check){
                response.sendRedirect("branch");
            }
        } catch (SQLException ex) {
            Logger.getLogger(BranchEditServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
