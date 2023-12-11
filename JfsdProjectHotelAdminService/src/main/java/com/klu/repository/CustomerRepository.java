package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>
{
	
	@Query(" SELECT c FROM Customer c WHERE c.email=?1 AND c.password=?2 ")
	public Customer checkCustomerLogin(String email,String password);
	
	@Query(" SELECT COUNT(c) FROM Customer c WHERE c.gender='Male' ")
	public int countMaleCustomers();
	
	@Query(" SELECT COUNT(c) FROM Customer c WHERE c.gender='Female' ")
	public int countFemaleCustomers();
}
