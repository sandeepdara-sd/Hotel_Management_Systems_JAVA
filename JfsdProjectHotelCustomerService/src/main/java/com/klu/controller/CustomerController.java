package com.klu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.model.Booking;
import com.klu.model.Customer;
import com.klu.model.Hotels;
import com.klu.model.Resorts;
import com.klu.service.BookingService;
import com.klu.service.CustomerService;
import com.klu.service.HotelService;
import com.klu.service.ResortService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController 
{
	@Autowired
	CustomerService cs;
	
	
	@Autowired
	HotelService hs;
	
	@Autowired
	ResortService rs;
	
	@Autowired
	BookingService bs;
	
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("chooselocation")
	public ModelAndView choosinglocation(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView("userhome");
		String location=req.getParameter("loc");
		List<Hotels> hlist=hs.viewAllHotelsByLoc(location);
		mv.addObject("hoteldata", hlist);
		return mv;
	}
	
	@GetMapping("chooseresortlocation")
	public ModelAndView choosingresortlocation(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView("userhome");
		String location=req.getParameter("locat");
		List<Resorts> rlist=rs.viewAllResortsByLoc(location);
		mv.addObject("resortdata", rlist);
		return mv;
	}

	
	
	
	@GetMapping("login")
	public String login_page() {
		return "login";
	}
	
	@PostMapping("checklogin")
	public ModelAndView checkLogin(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		Customer c=cs.checkCustomerLogin(email, password);
		if(c!=null) {
			HttpSession session=req.getSession();
			session.setAttribute("cname", c.getName());
			session.setAttribute("cid", c.getCustid());
			session.setAttribute("cemail", c.getEmail());
			mv.setViewName("userhome");
		}
		else {
			mv.setViewName("login");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	
	
	@GetMapping("registration")
	public String registration_page() {
		return "registration";
	}
	
	@PostMapping("insertcust")
	public ModelAndView insertcustomer(HttpServletRequest req) {
		
		ModelAndView mv=new ModelAndView();
		String msg=null;
		
		try {
			String cname=req.getParameter("name");
			String cemail=req.getParameter("email");
			String cpassword=req.getParameter("password");
			String ccontactno=req.getParameter("contactno");
			String cgender=req.getParameter("gender");
			
			Customer c=new Customer();
			c.setName(cname);
			c.setEmail(cemail);
			c.setPassword(cpassword);
			c.setContactno(ccontactno);
			c.setGender(cgender);
			
			msg=cs.addCustomer(c);
			
			
			mv.setViewName("login");
			mv.addObject("message",msg);
			
		}catch(Exception e) {
			msg="Customer Registration Not Successfull";
			mv.setViewName("registration");
			mv.addObject("message",msg);
		}
		
		return mv;
	}
	
	@GetMapping("userhome")
	public ModelAndView userhome(HttpServletRequest req) {
		
		HttpSession session=req.getSession();
		int custid=(int)session.getAttribute("cid");
		String name=(String)session.getAttribute("cname");
		
		ModelAndView mv=new ModelAndView("userhome");
		mv.addObject("cid", custid);
		mv.addObject("cname", name);
	    return mv;
		
	}
	
	@GetMapping("myprofile")
	public ModelAndView profile(@RequestParam("cid") int cid,HttpServletRequest request){
		ModelAndView mv=new ModelAndView();
		Customer cust=cs.viewCustomerById(cid);
		mv.setViewName("myprofile");
		mv.addObject("custdata", cust);
		return mv;
	}
	
	
	@GetMapping("book")
	public ModelAndView booking(@RequestParam("id") int id, HttpServletRequest request)
	{
	    ModelAndView modelAndView = new ModelAndView();
	    HttpSession session = request.getSession();
	    Hotels hotel = hs.viewHotelById(id);
	    modelAndView.setViewName("bookhotel");
	    modelAndView.addObject("hoteldata", hotel);
	    modelAndView.addObject("cname", session.getAttribute("cname"));
	    modelAndView.addObject("cemail", session.getAttribute("cemail"));
	    return modelAndView;
	}
	
	@GetMapping("editprofile")
	public ModelAndView editprofile(HttpServletRequest request)
	{
	    ModelAndView mv = new ModelAndView("updateprofile");
	    HttpSession session = request.getSession();
	    int id = (int) session.getAttribute("cid");
	    Customer customer = cs.viewCustomerById(id);
	    mv.addObject("custdata", customer);
	    return mv;
	 }
	
	 @PostMapping("update")
	 public ModelAndView update(HttpServletRequest request)
	 {
	    String msg = null;
	    ModelAndView modelAndView = new ModelAndView();
	    HttpSession session = request.getSession();
	    int id = (int) session.getAttribute("cid");
	    try
	    {
	      String name = request.getParameter("newname");
	      String contactno = request.getParameter("newcontactno");
	      String gender = request.getParameter("newgender");
	      Customer cust = new Customer();
	      cust.setCustid(id);
	      cust.setName(name);
	      cust.setContactno(contactno);
	      cust.setGender(gender);
	      msg = cs.updateCustomer(cust);
	      modelAndView.setViewName("userhome");
	      modelAndView.addObject("message", msg);
	    }
	    catch(Exception e)
	    {
	      msg = "Updation Failed";
	      modelAndView.setViewName("updateprofile");
	      modelAndView.addObject("message", msg);
	    }
	    return modelAndView;
	 }
	 
	 @GetMapping("changepassword")
	 public ModelAndView changePassword(HttpServletRequest req) {
		 ModelAndView mv=new ModelAndView();
		 HttpSession session=req.getSession();
		 String email=(String)session.getAttribute("cemail");
		 mv.setViewName("changepassword");
		 mv.addObject("email", email);
		 return mv;
	 }
	 
	 @PostMapping("updatepassword")
	 public ModelAndView updating(HttpServletRequest request) {
		 String msg=null;
		 ModelAndView mv=new ModelAndView();
		 HttpSession session = request.getSession();
		 int id = (int) session.getAttribute("cid");
		 Customer cu=cs.viewCustomerById(id);
		 String cpwd=cu.getPassword();
		 try {
			 String oldpwd=request.getParameter("opwd");
			 String newpwd=request.getParameter("npwd");
			 if(cpwd.equals(oldpwd)) {
				 Customer cust=new Customer();
				 cust.setCustid(id);
				 cust.setPassword(newpwd);
				 msg=cs.changePassword(cust);
				 mv.setViewName("changepassword");
				 mv.addObject("message", msg);
				 
			 }else {
				 msg = "Old Password is Incorrect";
			     mv.setViewName("changepassword");
			     mv.addObject("message", msg);
			 }
		 }
		 catch(Exception e) {
			  msg = "Some Error Happened. Please try later";
		      mv.setViewName("changepassword");
		      mv.addObject("message", msg);
		 }
		 return mv;
	 }
	 
	 @PostMapping("addhotel")
	 public ModelAndView addinghotel(HttpServletRequest req) {
		 String msg=null;
		 ModelAndView mv=new ModelAndView();
		 HttpSession session = req.getSession();
		 int custid = (int) session.getAttribute("cid");
		 try {
			 String hotelname=req.getParameter("hotelname");
			 String location=req.getParameter("location");
			 String hotelprice=req.getParameter("price");
			 int rooms=Integer.parseInt(req.getParameter("rooms"));
			 String checkindate=req.getParameter("checkindate");
			 String checkoutdate=req.getParameter("checkoutdate");
			 
			 Booking b=new Booking();
			 b.setCustid(custid);
			 b.setHotelname(hotelname);
			 b.setLocation(location);
			 b.setHotelprice(hotelprice);
			 b.setRooms(rooms);
			 b.setCheckindate(checkindate);
			 b.setCheckoutdate(checkoutdate);
			 
			 msg=bs.bookHotel(b);
			 mv.setViewName("userhome");
			 mv.addObject("message", msg);
			 
			 
		 }
		 catch(Exception e) {
			  msg = "Hotel Not Booked";
		      mv.setViewName("bookhotel");
		      mv.addObject("message", msg);
		 }
		 return mv;
	 }
	 
	 @GetMapping("mybookings")
	 public ModelAndView viewbookings(HttpServletRequest req) {
		 ModelAndView mv=new ModelAndView("mybookings");
		 HttpSession session = req.getSession();
		 int custid = (int) session.getAttribute("cid");
		 List<Booking> blist=bs.viewAllBookingsByCustId(custid);
		 mv.addObject("bookingdata", blist);
		 return mv;
	 }
	
	 @GetMapping("pay")
	 public ModelAndView paying(@RequestParam("bid") int bid,HttpServletRequest req) {
		 ModelAndView mv=new ModelAndView();
		 Booking book=bs.viewBookingByBid(bid);
		 mv.setViewName("mybookings");
		 mv.addObject("paydata", book);
		 return mv;
	 }
	
}
