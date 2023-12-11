package com.klu.service;

import java.util.List;

import com.klu.model.Hotels;

public interface HotelService 
{
	public List<Hotels> viewAllHotelsByLoc(String location);
	public Hotels viewHotelById(int id);
}
