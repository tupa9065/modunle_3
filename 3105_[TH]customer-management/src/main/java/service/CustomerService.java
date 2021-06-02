package service;

import dao.CustomerDAO;
import dao.ICustomerDAO;
import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    private ICustomerDAO customerDAO  = new CustomerDAO();

    @Override
    public List<Customer> findAll() {
        return customerDAO.findAll();
    }

    @Override
    public void createNew(Customer customer) {
        customerDAO.createNewCustomer(customer);
    }

    @Override
    public Customer findById(int id) {
        return  customerDAO.findById(id);
    }


    @Override
    public boolean update(int id, Customer customer) {
        return customerDAO.updateInfosCustomer(id,customer);

    }

    @Override
    public boolean delete(int id) {
        return  customerDAO.deleteCustomer(id);
    }


}
