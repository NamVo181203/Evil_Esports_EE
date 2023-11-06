package Controller;

import DAO.DAO;
import Entity.PcComponent;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


/**
 *
 * @author USER
 */
@WebServlet(name = "HeaderController", urlPatterns = {"/header"})
public class HeaderController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //b1 : get data from dao
        DAO dao = new DAO();
        List<PcComponent> list = dao.getAllpc();
        //b2 : set data to jsp
        request.setAttribute("listP", list);
        request.getRequestDispatcher("../webapp/header.jsp").forward(request, response);
    }
//public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    // Lấy dữ liệu từ dao
//    DAO dao = new DAO();
//    List<PcComponent> list = dao.getAllpc();
//
//    // Đặt dữ liệu vào request attribute
//    request.setAttribute("listP", list);
//
//    // Chuyển hướng đến trang JSP
//    //request.setAttribute("list", list);
//    request.getRequestDispatcher("header.jsp").forward(request, response);
//}
}




