package com.klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Admin;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer>
{
	@Query(" SELECT a FROM Admin a WHERE a.username=?1 AND a.password=?1 ")
	public Admin checkAdminLogin(String username,String password);
}
