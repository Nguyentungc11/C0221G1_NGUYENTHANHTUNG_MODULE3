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
        customerList.add(new Customer("Nguyễn Văn A", "1990-01-20", "Đà Nẵng","https://img.lovepik.com/photo/50036/6498.jpg_wh860.jpg"));
        customerList.add(new Customer("Phạm Thị B", "1999-12-12", "Quảng Nam","https://lh6.googleusercontent.com/-Obj8kQxHhWE/VBZdETRSGgI/AAAAAAAABB4/t1CRt5NBOuo/w367-h551-no/quang%2Bcao%2B3.jpg"));
        customerList.add(new Customer("Trần C", "1998-08-11", "Hà Nội","https://lh3.googleusercontent.com/proxy/_q_LKJcMuhryK7fjRzapEF9qQ1_4PG7t3rU8dNvi0r9d-_1NCUts_472HU-ZRcgP-WmBEYLPm1pN9gmFrzbrncugnhmhBFaT47n-I_JB2WDgUjETX2tBEGzJIibwx-fGWdCrkl0rE7wXI3TZXTDDHHitAPqZAQQ"));
        customerList.add(new Customer("Đỗ Thị D", "2000-11-11", "Hồ Chí Minh","https://sohanews.sohacdn.com/2016/15384453-1561323703883787-4045303949386597506-o-1481125045420-1481165971452.jpg"));
        customerList.add(new Customer("Nguyễn Thanh", "1959-10-10", "Hue","https://sohanews.sohacdn.com/thumb_w/660/2017/1291610710209554594881299982616623413613868o-1506468168931.jpg"));
        request.setAttribute("customerList",customerList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customerList.jsp");
        requestDispatcher.forward(request,response);
    }
}
