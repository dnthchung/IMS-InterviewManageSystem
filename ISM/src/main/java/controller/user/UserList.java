/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.user;

import dao.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.Department;
import model.User;
import model.UserRole;
import model.UserStatus;

/**
 *
 * @author chun
 */
@WebServlet(name="UserList", urlPatterns={"/user-list"})
public class UserList extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UserList</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UserList at " + request.getContextPath() + "</h1>");
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
        
        HttpSession session = request.getSession(false); // Không tạo session mới nếu không tồn tại
        if (session == null || session.getAttribute("loggedInUser") == null) {
            // Nếu session không tồn tại hoặc không có thông tin người dùng đăng nhập, chuyển hướng đến trang đăng nhập
            response.sendRedirect("login"); // Điều hướng đến trang đăng nhập của bạn
            return; // Kết thúc xử lý
        }
        // Tiếp tục xử lý yêu cầu nếu người dùng đã đăng nhập
        UserDAO userDAO = new UserDAO();
        ArrayList<User> userList = userDAO.getAllUser();
        ArrayList<UserStatus> userStatus = userDAO.getAllUserStatus();
        ArrayList<UserRole> userRole = userDAO.getAllUserRole();
        ArrayList<Department> departmentList = userDAO.getAllDeparmentForUser();

        int page, numberpage = 5;
        int size = userList.size();
        int num = (size % 5 == 0 ? (size / 5) : ((size / 5)) + 1);
        String xpage = request.getParameter("page");
        
        if (xpage == null) {
            page = 1;
        } else {
            page = Integer.parseInt(xpage);
        }
        
        int start, end;
        start = (page - 1) * numberpage;
        end = Math.min(page * numberpage, size);
        
        List<User> listU = userDAO.getListbyPage(userList, start, end);
        
        request.setAttribute("listU", listU);
        request.setAttribute("page", page);
        request.setAttribute("num", num);
        request.setAttribute("userStatus", userStatus);
        request.setAttribute("userRole", userRole);
        request.setAttribute("departmentList", departmentList);
        request.setAttribute("URL", "User Management");
        request.getRequestDispatcher("view/user/user-list.jsp").forward(request, response);
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