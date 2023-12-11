package com.klu.service;

import java.util.List;

import com.klu.model.Resorts;

public interface ResortService 
{
	public List<Resorts> viewAllResortsByLoc(String location);

}
