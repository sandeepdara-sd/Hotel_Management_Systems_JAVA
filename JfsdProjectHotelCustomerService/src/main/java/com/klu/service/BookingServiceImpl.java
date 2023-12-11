package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Booking;
import com.klu.repository.BookingRepository;

@Service
public class BookingServiceImpl implements BookingService
{
	@Autowired
	BookingRepository br;

	@Override
	public String bookHotel(Booking b) {
		br.save(b);
		return "Hotel Booked Successfully";
	}

	@Override
	public List<Booking> viewAllBookingsByCustId(int custid) {
		return br.viewAllBookings(custid);
	}

	@Override
	public Booking viewBookingByBid(int bid) {
		return br.viewBookingByBid(bid);
	}
}
