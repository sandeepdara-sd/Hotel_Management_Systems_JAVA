package com.klu.service;


import com.klu.model.Customer;

public interface CustomerService 
{
	public String addCustomer(Customer c);
	public Customer checkCustomerLogin(String email,String password);
}
