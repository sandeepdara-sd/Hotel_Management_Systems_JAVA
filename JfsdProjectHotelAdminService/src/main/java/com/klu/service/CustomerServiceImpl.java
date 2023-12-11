package com.klu.service;


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
}
