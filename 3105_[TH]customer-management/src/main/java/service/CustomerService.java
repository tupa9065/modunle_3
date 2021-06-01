package service;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerService implements ICustomerService {
    private static List< Customer> customers = new ArrayList<>();;
    static {
        customers.add(new Customer(1, "John",  "Hanoi"));
        customers.add(new Customer(2, "Bill",  "Danang"));
        customers.add(new Customer(3, "Alex", "Saigon"));
        customers.add(new Customer(4, "Adam", "Beijin"));
        customers.add(new Customer(5, "Sophia",  "Miami"));
        customers.add(new Customer(6, "Rose",  "Newyork"));
    }

    @Override
    public List<Customer> findAll() {
        return customers;
    }

    @Override
    public void createNew(Customer customer) {
        customers.add(customer);
    }

    @Override
    public int findById(int id) {
        for (int i =0 ; i < customers.size(); i++){
            if(id == customers.get(i).getId()){
                return i;
            }
        }
        return -1;
    }

    @Override
    public Customer findCustomerByID(int id) {
         int index = findById(id);
        if(index!=-1){
            return customers.get(index);
        }
        return null;
    }

    @Override
    public boolean update(int id, Customer customer) {
        int index = findById(id);
        if(index!=-1){
            customers.set(index,customer);
            return true;
        }
            return false;

    }

    @Override
    public boolean delete(int id) {
        int index = findById(id);
        if(index!=-1){
            customers.remove(index);
            return true;
        }
            return false;
    }


}
