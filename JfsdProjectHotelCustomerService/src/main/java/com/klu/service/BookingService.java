package com.klu.service;

import java.util.List;

import com.klu.model.Booking;

public interface BookingService 
{
	public String bookHotel(Booking b);
	public List<Booking> viewAllBookingsByCustId(int custid);
	public Booking viewBookingByBid(int bid);
}
