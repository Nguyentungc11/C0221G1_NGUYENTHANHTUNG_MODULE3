package model.repository;

import model.bean.Customer;
import model.bean.TypeCustomer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerRepository {
    private BaseRepository baseRepository = new BaseRepository();
    private static final String FIND_BY_ID = "SELECT * from customer where customer_id = ?;";
    private static final String SELECT_ALL_CUSTOMER = "SELECT * FROM customer;";
    private static final String SELECT_ALL_TYPE_CUSTOMER = "SELECT * FROM customer_type;";
    private static final String INSERT_INTO_CUSTOMER = "insert into customer(customer_name,customer_code,customer_type_id,customer_birthday,customer_gender," +
            "customer_id_card,customer_phone,customer_email,customer_address)\n" +
            "values(?,?,?,?,?,?,?,?,?);";
    private static final String DELETE_CUSTOMER_BY_ID = "delete from customer where customer_id = ?;";
    private static final String UPDATE_CUSTOMER_BY_ID = "update customer\n" +
            "set customer_name = ?,\n" +
            "customer_type_id = ?,\n" +
            "customer_birthday = ?,\n" +
            "customer_gender = ?,\n" +
            "customer_id_card = ?,\n" +
            "customer_phone = ?,\n" +
            "customer_email = ?,\n" +
            "customer_address = ?\n" +
            "where customer_id = ?;";
    private static final String SEARCH_BY_NAME = "select * from customer where customer_name like ?;";

    public CustomerRepository() {
    }

    public List<Customer> findAllCustomer() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id_customer = resultSet.getInt("customer_id");
                int id_type_customer = resultSet.getInt("customer_type_id");
                String name = resultSet.getString("customer_name");
                String date = resultSet.getString("customer_birthday");
                String gender = resultSet.getString("customer_gender");
                String idCard = resultSet.getString("customer_id_card");
                String phone = resultSet.getString("customer_phone");
                String email = resultSet.getString("customer_email");
                String address = resultSet.getString("customer_address");
                String code = resultSet.getString("customer_code");
                Customer customer = new Customer(id_customer,code,name,id_type_customer,date,gender,idCard,phone,email,address);
                customerList.add(customer);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    public List<TypeCustomer> findAllNameTypeCustomer() {
        List<TypeCustomer > typeCustomers = new ArrayList<>();
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TYPE_CUSTOMER);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("customer_type_id");
                String name = rs.getString("customer_type_name");
                TypeCustomer typeCustomer = new TypeCustomer(id,name);
                typeCustomers.add(typeCustomer);
            }
            preparedStatement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return typeCustomers;
    }
//    customer_name,customer_code,customer_type_id,customer_birthday,customer_gender," +
//            "customer_id_card,customer_phone,customer_email,customer_address)\n"
    public void saveCustomer(Customer customer){
        Connection connection = baseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_INTO_CUSTOMER);
            preparedStatement.setString(1,customer.getName());
            preparedStatement.setString(2,customer.getCode());
            preparedStatement.setInt(3,customer.getCustomerTypeId());
            preparedStatement.setString(4,customer.getBirthday());
            preparedStatement.setString(5,customer.getGender());
            preparedStatement.setString(6,customer.getIdCard());
            preparedStatement.setString(7,customer.getPhone());
            preparedStatement.setString(8,customer.getEmail());
            preparedStatement.setString(9,customer.getAddress());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }



}
