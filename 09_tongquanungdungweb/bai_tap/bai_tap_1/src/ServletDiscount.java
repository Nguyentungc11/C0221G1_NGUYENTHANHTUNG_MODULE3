import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "ServletDiscount",urlPatterns = "/discount")
public class ServletDiscount extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double price = Double.parseDouble(request.getParameter("price"));
        int percent = Integer.parseInt(request.getParameter("percent"));

        double discountAmount =price - price * percent * 0.01;
        request.setAttribute("price",price);
        request.setAttribute("percent",percent);
        request.setAttribute("discountAmount",discountAmount);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("calculator.jsp");
        requestDispatcher.forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
