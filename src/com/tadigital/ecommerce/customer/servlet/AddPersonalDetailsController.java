package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/Personal")

public class AddPersonalDetailsController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("signIn.html");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String gender = req.getParameter("f3");
		String addr = req.getParameter("f4");
		String city = req.getParameter("f5");
		long zip = Long.parseLong(req.getParameter("f6"));
		String state = req.getParameter("f7");
		String country = req.getParameter("f8");
		long contact = Long.parseLong(req.getParameter("f9"));
		String email = req.getParameter("f10");
		
		Customer customer = new Customer();

		
		customer.setGender(gender);
		customer.setAddress(addr);
		customer.setCity(city);
		customer.setZip(zip);
		customer.setState(state);
		customer.setCountry(country);
		customer.setContact(contact);
		customer.setEmail(email);

		CustomerService customerService = new CustomerService();
		
		boolean status = customerService.registerPersonalDetails(customer);
		if (status) {
			req.setAttribute("updated", "Y");
		} else {
			req.setAttribute("updated", "N");
		}
		RequestDispatcher rd = req.getRequestDispatcher("Customerinfo.jsp");
		rd.forward(req, resp);

	}

}