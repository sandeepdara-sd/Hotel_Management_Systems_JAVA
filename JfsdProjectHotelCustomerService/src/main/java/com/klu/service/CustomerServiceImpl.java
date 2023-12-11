package com.klu.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Customer;
import com.klu.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{

	@Autowired
	private CustomerRepository cr;
	
	public String addCustomer(Customer c) {
		cr.save(c);
		return "Customer Registered Successfully";
	}

	
	public Customer checkCustomerLogin(String email, String password) {
		return cr.checkCustomerLogin(email, password);
	}


	@Override
	public Customer viewCustomerById(int id) {
		Optional<Customer> obj = cr.findById(id);
	    if(obj.isPresent())
	    {
	      Customer cust = obj.get();
	      return cust;
	    }
	    else {
	    return null;
	    }
	}


	@Override
	public String updateCustomer(Customer c) {
		Customer customer2 = cr.findById(c.getCustid()).get();
		customer2.setName(c.getName());
		customer2.setContactno(c.getContactno());
		customer2.setGender(c.getGender());
	    cr.save(customer2);
	    return "Employee Updated Successfully";
	}


	@Override
	public String changePassword(Customer c) {
		Customer customer2 = cr.findById(c.getCustid()).get();
		customer2.setPassword(c.getPassword());
	    cr.save(customer2);
	    return "Password Changed Successfully";
	}
}
