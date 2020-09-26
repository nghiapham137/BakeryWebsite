package Controller;

import Model.Product;
import Service.Service;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/user")
public class OrderController extends HttpServlet {
    Service service = new Service();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "order":

                    break;

            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        try {
            switch (action) {
                case "order":
                    showOrderPage(request,response);
                    break;
                default:
                    showHomePage(request,response);
                    break;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showHomePage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.sendRedirect("View/index.jsp");
    }

    private void showOrderPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> productList = service.showAllProducts();
        request.setAttribute("productList", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("View/Order.jsp");
        dispatcher.forward(request, response);
    }
}
