package com.klu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.model.Resorts;
import com.klu.repository.ResortsRepository;

@Service
public class ResortServiceImpl implements ResortService
{
	@Autowired
	ResortsRepository rr;

	public List<Resorts> viewAllResortsByLoc(String location) {
		return rr.viewAllResortsByLoc(location);
	}

}
