package com.klu.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="resort_table")
public class Resorts 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int rid;
	String rname;
	double rprice;
	String location;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public double getRprice() {
		return rprice;
	}
	public void setRprice(double rprice) {
		this.rprice = rprice;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
}
