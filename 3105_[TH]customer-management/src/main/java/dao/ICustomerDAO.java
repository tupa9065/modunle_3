package dao;

import model.Customer;

import java.util.List;

public interface ICustomerDAO {
    List<Customer> findAll();
    Customer findById(int id);
    boolean createNewCustomer(Customer customer);
    boolean updateInfosCustomer(int id, Customer customer);
    boolean deleteCustomer(int id);
}
