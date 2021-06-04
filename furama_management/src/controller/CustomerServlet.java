package controller;

import model.bean.Customer;
import model.bean.TypeCustomer;
import model.service.ICustomerService;
import model.service.impl.CustomerServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CustomerServlet", urlPatterns = "/customers")
public class CustomerServlet extends HttpServlet {
    ICustomerService customerService = new CustomerServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                addCustomer(request,response);
                showListCustomer(request,response);
                break;
                
            case "edit":
                break;
            case "show":
                break;

            default:
                showListCustomer(request, response);
                break;
        }
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {

        String code = request.getParameter("code");
        String name = request.getParameter("name");
        int customerTypeId = Integer.parseInt(request.getParameter("typeCustomer"));
        String birthday = request.getParameter("birthday");
        String gender = request.getParameter("gender");
        String idCard = request.getParameter("idcard");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer();
        customer.setAddress(address);
        customer.setBirthday(birthday);
        customer.setCode(code);
        customer.setCustomerTypeId(customerTypeId);
        customer.setEmail(email);
        customer.setGender(gender);
        customer.setName(name);
        customer.setIdCard(idCard);
        customer.setPhone(phone);
        customerService.insertIntoCustomer(customer);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateCustomerPage(request, response);
                break;
            case "edit":
                break;
            case "show":
                break;

            default:
                showListCustomer(request, response);
                break;
        }
    }

    private void showCreateCustomerPage(HttpServletRequest request, HttpServletResponse response) {
        List<TypeCustomer> typeCustomerList = customerService.findTypeOfCustomer();
        request.setAttribute("typeCustomerList", typeCustomerList);
        try {
            request.getRequestDispatcher("/view/customer/create.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.findAll();
        List<TypeCustomer> typeCustomerList = customerService.findTypeOfCustomer();
        request.setAttribute("customers", customerList);
        request.setAttribute("typeCustomer", typeCustomerList);
        try {
            request.getRequestDispatcher("/view/customer/list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }
}
