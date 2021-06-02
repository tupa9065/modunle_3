package service;

import model.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();

    void createNew(Customer customer);

    Customer findById(int id);

    boolean update(int id, Customer customer);

    boolean delete(int id);
}
