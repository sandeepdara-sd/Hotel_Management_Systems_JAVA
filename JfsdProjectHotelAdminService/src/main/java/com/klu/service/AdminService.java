package com.klu.service;

import java.util.List;

import com.klu.model.Admin;
import com.klu.model.Customer;
import com.klu.model.Hotels;
import com.klu.model.Resorts;

public interface AdminService 
{
	public Admin checkAdminLogin(String username,String password);
	public List<Customer> viewAllCustomers();
	public String addHotel(Hotels h);
	public String addResort(Resorts r);
	public int countMaleCustomers();
	public int countFemaleCustomers();
}
