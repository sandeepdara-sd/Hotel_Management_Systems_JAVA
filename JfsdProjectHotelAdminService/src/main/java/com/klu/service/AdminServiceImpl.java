package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Admin;
import com.klu.model.Customer;
import com.klu.model.Hotels;
import com.klu.model.Resorts;
import com.klu.repository.AdminRepository;
import com.klu.repository.CustomerRepository;
import com.klu.repository.HotelsRepository;
import com.klu.repository.ResortsRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	AdminRepository ar;
	
	@Autowired
	CustomerRepository cr;
	
	@Autowired
	HotelsRepository hr;
	
	@Autowired
	ResortsRepository rr;
	
	
	public Admin checkAdminLogin(String username, String password) {
		return ar.checkAdminLogin(username, password);
	}

	@Override
	public List<Customer> viewAllCustomers() {
		return cr.findAll();
	}

	public String addHotel(Hotels h) {
		hr.save(h);
		return "Hotel Added Successfully";
	}

	@Override
	public String addResort(Resorts r) {
		rr.save(r);
		return "Resort Added Successfully";
	}

	@Override
	public int countMaleCustomers() {
		return cr.countMaleCustomers();
	}

	@Override
	public int countFemaleCustomers() {
		return cr.countFemaleCustomers();
	}
}
