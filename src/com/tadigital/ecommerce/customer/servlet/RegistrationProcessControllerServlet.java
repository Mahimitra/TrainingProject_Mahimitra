	package com.tadigital.ecommerce.customer.servlet;

import java.io.*;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@WebServlet("/register")
public class RegistrationProcessControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rd = req.getRequestDispatcher("RegistrationForm.html");
		try {
			rd.forward(req, resp);
		} catch (ServletException | IOException e) {

			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String name[] = req.getParameter("f1").split(" ");
		String firstName = name[0];

		String lastName;
		if (name.length == 1) {
			lastName = null;
		} else {
			lastName = name[1];
		}

		String email = req.getParameter("f2");
		String password = req.getParameter("f3");

		Customer customer = new Customer();
		customer.setFirstName(firstName);
		customer.setLastName(lastName);

		customer.setEmail(email);
		customer.setPassword(password);

		CustomerService customerService = new CustomerService();
		boolean status = customerService.registerCustomer(customer);
		if (status) {
			HttpSession ses = req.getSession();
			ses.setAttribute("RegStatus", "true");
			RequestDispatcher rd = req.getRequestDispatcher("signinsignup.jsp");
			try {
				rd.forward(req, resp);
			} catch (ServletException | IOException  e) {
				
				e.printStackTrace();
			} 
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("RegStatus", "false");
			RequestDispatcher rd = req.getRequestDispatcher("signinsignup.jsp");
			try {
				rd.forward(req, resp);
			} catch (ServletException | IOException  e) {
				
				e.printStackTrace();
			} 
		}
	}
}
