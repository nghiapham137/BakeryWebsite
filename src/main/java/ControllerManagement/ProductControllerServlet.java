package ControllerManagement;

import ModelManagement.Entities.Product;
import ModelManagement.ServiceManagement.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductControllerServlet", urlPatterns = "/productController")
public class ProductControllerServlet extends HttpServlet {

    private ProductService productService = new ProductService();
    RequestDispatcher dispatcher;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "ProductManagement":
                List<Product> products = productService.getAll();
                request.setAttribute("products", products);
                dispatcher = getServletContext().getRequestDispatcher("../ViewManagementPage/ProductManagement.jsp");
                dispatcher.forward(request, response);
                break;
            default:
                response.sendRedirect("../ViewManagementPage/ProductManagement.jsp");
                break;
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher;
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        switch (action) {
            case "add":
                break;
            case "delete":
                break;
            case "update":
                break;
            default:
                List<Product> products = productService.getAll();
                request.setAttribute("products", products);
                dispatcher = getServletContext().getRequestDispatcher("/ViewManagementPage/ProductManagement.jsp");
                dispatcher.forward(request, response);
                break;
        }
    }
}
