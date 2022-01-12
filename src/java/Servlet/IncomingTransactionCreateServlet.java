
package Servlet;

import Controller.TransactionController;
import Model.TransactionModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class IncomingTransactionCreateServlet extends HttpServlet {

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
            TransactionController tc = new TransactionController();
            ArrayList party = tc.getFactory();
            ArrayList product = tc.getProduct();
            
            request.setAttribute("party", party);
            request.setAttribute("product", product);
            
            RequestDispatcher dispatch = request.getRequestDispatcher("/incomingTransactionCreate.jsp");
            dispatch.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(IncomingTransactionCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
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
            String party_id = request.getParameter("party_id");
            String product_id = request.getParameter("product_id");
            String amount = request.getParameter("amount");
            String date = request.getParameter("date");
            String type = request.getParameter("type");
            
            TransactionModel model = new TransactionModel();
            model.setParty_id(party_id);
            model.setProduct_id(product_id);
            model.setAmount(Integer.parseInt(amount));
            model.setDate(date);
            model.setType(type);
            
            TransactionController tc = new TransactionController();
            boolean check = tc.createIncoming(model);
            
            if(check) {
                //go to index page
                response.sendRedirect("incomingTransaction");
            }
        } catch (SQLException ex) {
            Logger.getLogger(IncomingTransactionCreateServlet.class.getName()).log(Level.SEVERE, null, ex);
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
