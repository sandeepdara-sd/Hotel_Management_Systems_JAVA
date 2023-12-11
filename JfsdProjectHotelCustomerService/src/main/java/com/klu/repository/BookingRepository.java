package com.klu.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.model.Booking;

@Repository
public interface BookingRepository extends JpaRepository<Booking, Integer>
{
	@Query(" SELECT b FROM Booking b WHERE custid=?1 ")
	public List<Booking> viewAllBookings(int custid);
	
	@Query(" SELECT b FROM Booking b WHERE bid=?1 ")
	public Booking viewBookingByBid(int bid);
	
}
