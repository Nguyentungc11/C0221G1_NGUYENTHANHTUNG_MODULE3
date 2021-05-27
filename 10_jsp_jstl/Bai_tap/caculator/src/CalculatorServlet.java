import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet",urlPatterns = "/calculator")
public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double result = 0;
        double firstOperand = Double.parseDouble(request.getParameter("firstNumber"));
        double secondOperand = Double.parseDouble(request.getParameter("secondNumber"));
        String operator = request.getParameter("operator");
        switch (operator) {
            case "Addition":
                result = firstOperand + secondOperand;
                break;
            case "Subtraction":
                result = firstOperand - secondOperand;
                break;
            case "Multiplication":
                result = firstOperand * secondOperand;
                break;
            case "Division":
                result = firstOperand / secondOperand;
                break;
        }
        request.setAttribute("result",result);
        request.getRequestDispatcher("calculator.jsp").forward(request,response);

    }
}

