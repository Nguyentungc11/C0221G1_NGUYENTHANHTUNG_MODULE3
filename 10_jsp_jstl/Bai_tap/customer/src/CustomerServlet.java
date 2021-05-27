import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet",urlPatterns = "")
public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList.add(new Customer("Nguyễn Văn A", "1990-01-20", "Đà "));
        customerList.add(new Customer("Phạm Thị B", "1999-12-12", "Quảng Nam"));
        customerList.add(new Customer("Trần C", "1998-08-11", "Hà Nội"));
        customerList.add(new Customer("Đỗ Thị D", "2000-11-11", "Hồ Chí Minh"));
        customerList.add(new Customer("Nguyễn Thanh", "1959-10-10", "Hue"));
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customerList.jsp");
        requestDispatcher.forward(request,response);
    }
}
