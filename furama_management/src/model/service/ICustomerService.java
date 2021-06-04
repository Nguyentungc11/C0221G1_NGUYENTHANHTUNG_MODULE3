package model.service;

import model.bean.Customer;
import model.bean.TypeCustomer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    List<TypeCustomer> findTypeOfCustomer();
    public boolean insertIntoCustomer(Customer customer);
    public boolean deleteCustomer(int id);
    public Customer findById(int id);
    public boolean updateCustomerById(int id,Customer customer);
    public List<Customer> searchByName(String name);
}
