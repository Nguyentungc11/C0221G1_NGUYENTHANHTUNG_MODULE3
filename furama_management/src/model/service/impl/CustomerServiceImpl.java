package model.service.impl;

import model.bean.Customer;
import model.bean.TypeCustomer;
import model.repository.CustomerRepository;
import model.service.ICustomerService;

import java.util.List;

public class CustomerServiceImpl implements ICustomerService {
    CustomerRepository customerRepository = new CustomerRepository();
    @Override
    public List<Customer> findAll() {
        return customerRepository.findAllCustomer();
    }

    @Override
    public List<TypeCustomer> findTypeOfCustomer() {
        return customerRepository.findAllNameTypeCustomer();
    }

    @Override
    public boolean insertIntoCustomer(Customer customer) {
         customerRepository.saveCustomer(customer);
        return true;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return false;
    }

    @Override
    public Customer findById(int id) {
        return null;
    }

    @Override
    public boolean updateCustomerById(int id, Customer customer) {
        return false;
    }

    @Override
    public List<Customer> searchByName(String name) {
        return null;
    }
}
