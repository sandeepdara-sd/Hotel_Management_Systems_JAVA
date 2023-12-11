package com.klu.service;


import com.klu.model.Customer;

public interface CustomerService 
{
	public String addCustomer(Customer c);
	public Customer checkCustomerLogin(String email,String password);
	public Customer viewCustomerById(int id);
	public String updateCustomer(Customer c);
	public String changePassword(Customer c);
}
