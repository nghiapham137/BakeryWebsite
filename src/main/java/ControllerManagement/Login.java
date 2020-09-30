package ControllerManagement;

import ModelManagement.ServiceManagement.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "userControllerServlet", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    private UserService userService = new UserService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "login":
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean isLogged = userService.login(username, password);
                if (isLogged) {
                    try {
                        response.sendRedirect("/productController");
                    } catch (Exception exception) {
                        System.out.println(exception);
                    }
                } else {
//                    request.setAttribute("errorString", "User Name or password invalid!");
//                    RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("../ViewManagementPage/Login.jsp");
//                    dispatcher.forward(request, response);

                    response.sendRedirect("../ViewManagementPage/Login.jsp");
//
//                    String errorString = "User Name or password invalid!";
//
//                    response.setContentType("text/plain");
//                    response.setCharacterEncoding("UTF-8");
//                    response.getWriter().write(errorString);

                }
                break;
            default:
                response.sendRedirect("../ViewManagementPage/Login.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        action = action == null ? "" : action;
        switch (action) {
            case "login":
                response.sendRedirect("/ViewManagementPage/Login.jsp");
                break;
            default:
                response.sendRedirect("/ViewManagementPage/Login.jsp");
                break;
        }
    }
}
