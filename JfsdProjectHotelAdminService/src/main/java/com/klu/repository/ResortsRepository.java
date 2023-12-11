package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Resorts;

@Repository
public interface ResortsRepository extends JpaRepository<Resorts, Integer>
{
	@Query(" SELECT r FROM Resorts r WHERE location=?1 ")
	public List<Resorts> viewAllResortsByLoc(String location);
}
