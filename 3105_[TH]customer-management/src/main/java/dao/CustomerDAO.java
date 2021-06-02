package dao;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO implements  ICustomerDAO {
    public static final String SELECT_ALL_CUSTOMER ="select * from customers";
    public static final String  SELECT_CUSTOMER_BY_ID = "select * from customers where id = ?";
    public static final String  INSERT_NEW_CUSTOMER = "insert into customers(name,address) value (?,?)";
    public static final String DELETE_CUSTOMER_BY_ID = "";
    public static final String UPDATE_INFO_CUSTOMER_BY_ID = "update customers set name= ?,address =? where id = ?";

    @Override
    public List<Customer> findAll() {
        List<Customer> customers = new ArrayList<>();
        Connection connection = SqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CUSTOMER);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                customers.add(new Customer(id,name,address));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customers;
    }

    @Override
    public Customer findById(int id) {
        Customer customer = new Customer();
        Connection connection = SqlConnection.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_CUSTOMER_BY_ID);
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                customer.setName(name);
                customer.setAddress(address);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return customer;
    }

    @Override
    public boolean createNewCustomer(Customer customer) {
        Connection connection = SqlConnection.getConnection();
        int rowInsert = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_NEW_CUSTOMER);
            preparedStatement.setString(1,customer.getName());
            preparedStatement.setString(2,customer.getAddress());
            rowInsert=preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowInsert!=0;
    }

    @Override
    public boolean updateInfosCustomer(int id, Customer customer) {
        Connection connection = SqlConnection.getConnection();
        int rowUpdate = 0;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_INFO_CUSTOMER_BY_ID);
            preparedStatement.setString(1,customer.getName());
            preparedStatement.setString(2,customer.getAddress());
            preparedStatement.setInt(3,id);
            rowUpdate=preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return rowUpdate!=0;
    }

    @Override
    public boolean deleteCustomer(int id) {
        return false;
    }
}
