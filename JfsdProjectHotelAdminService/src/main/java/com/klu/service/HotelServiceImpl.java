package com.klu.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Hotels;
import com.klu.repository.HotelsRepository;

@Service
public class HotelServiceImpl implements HotelService
{
	
	@Autowired
	HotelsRepository hr;

	public List<Hotels> viewAllHotelsByLoc(String location) {
		return hr.viewAllHotelsByLoc(location);
	}

	@Override
	public Hotels viewHotelById(int id) {
		Optional<Hotels> obj = hr.findById(id);
	    if(obj.isPresent())
	    {
	      Hotels hotel = obj.get();
	      return hotel;
	    }
	    else {
	    return null;
	    }
	}

}
