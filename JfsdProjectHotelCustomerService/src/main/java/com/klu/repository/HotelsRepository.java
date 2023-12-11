package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Hotels;

@Repository
public interface HotelsRepository extends JpaRepository<Hotels, Integer>
{
	@Query(" SELECT h FROM Hotels h WHERE location=?1 ")
	public List<Hotels> viewAllHotelsByLoc(String location);
}
