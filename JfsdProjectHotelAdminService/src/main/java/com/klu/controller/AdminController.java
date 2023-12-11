package com.klu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klu.model.Admin;
import com.klu.model.Customer;
import com.klu.model.Hotels;
import com.klu.model.Resorts;
import com.klu.service.AdminService;
import com.klu.service.CustomerService;
import com.klu.service.HotelService;
import com.klu.service.ResortService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController 
{
	@Autowired
	CustomerService cs;
	
	@Autowired
	AdminService as;
	
	@Autowired
	HotelService hs;
	
	@Autowired
	ResortService rs;
	
	@GetMapping("/")
	@ResponseBody
	public String main() {
		return "admin microservice";
	}
	
	@GetMapping("adminhome")
	public String adminhoming() {
		return "adminhome";
	}
	
	@GetMapping("viewcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv=new ModelAndView("viewallcustomers");
		List<Customer> list=as.viewAllCustomers();
		mv.addObject("custdata", list);
		return mv;
	}
	
	
	
	

	
	@GetMapping("adminlogin")
	public String admin() {
		return "adminlogin";
	}
	
	
	
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminLogin(HttpServletRequest req){
		ModelAndView mv=new ModelAndView();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		Admin a=as.checkAdminLogin(username, password);
		if(a!=null) {
			mv.setViewName("adminhome");
		}
		else {
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	
	@PostMapping("inserthotel")
	public ModelAndView inserthotel(HttpServletRequest req) {
		
		ModelAndView mv=new ModelAndView();
		String msg=null;
		try {
			
			String hname=req.getParameter("hotelname");
			double hprice=Double.parseDouble(req.getParameter("hotelprice"));
			String himage=req.getParameter("imgurl");
			String hlocation=req.getParameter("location");
			
			Hotels h=new Hotels();
			h.setHname(hname);
			h.setHprice(hprice);
			h.setImgurl(himage);
			h.setLocation(hlocation);
			
			msg=as.addHotel(h);
			mv.setViewName("addhotel");
			mv.addObject("message",msg);
		}catch(Exception e) {
			msg="Hotel Not Added Successfully";
			mv.setViewName("addhotel");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	@PostMapping("insertresort")
	public ModelAndView insertresort(HttpServletRequest req) {
		
		ModelAndView mv=new ModelAndView();
		String msg=null;
		try {
			
			String rname=req.getParameter("resortname");
			double rprice=Double.parseDouble(req.getParameter("resortprice"));
			String rlocation=req.getParameter("location");
			
			Resorts r=new Resorts();
			r.setRname(rname);
			r.setRprice(rprice);
			r.setLocation(rlocation);
			
			msg=as.addResort(r);
			mv.setViewName("addresort");
			mv.addObject("message",msg);
		}catch(Exception e) {
			msg="Resort Not Added Successfully";
			mv.setViewName("addresort");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	@GetMapping("addhotel")
	public String addhotel()
	{
		return "addhotel";
	}
	
	@GetMapping("addresort")
	public String addresort()
	{
		return "addresort";
	}
	
	@GetMapping("customers-json")
	@ResponseBody
	public List<Customer> viewAllCustomersJson() {
	     List<Customer> list = as.viewAllCustomers();
	     return list;
	}
	
	@GetMapping("count-male")
	@ResponseBody
	public Map<String, Integer> countMaleCustomers() {
	    Map<String, Integer> result = new HashMap<>();
	    int maleCount = as.countMaleCustomers();
	    int femaleCount=as.countFemaleCustomers();
	    result.put("male", maleCount);
	    result.put("female", femaleCount);
	    return result;
	}
}
