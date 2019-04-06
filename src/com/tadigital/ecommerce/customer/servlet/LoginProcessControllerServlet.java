package com.tadigital.ecommerce.customer.servlet;

import java.io.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.entity.Customer;
import com.tadigital.ecommerce.customer.service.CustomerService;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginProcessControllerServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) {
		RequestDispatcher rd = req.getRequestDispatcher("LoginForm.html");
		try {
			rd.forward(req, resp);
		} catch (ServletException | IOException e) {

			e.printStackTrace();
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		String email = req.getParameter("f1");
		String password = req.getParameter("f2");

		Customer customer = new Customer();
		customer.setEmail(email);
		customer.setPassword(password);

		HttpSession ses1 = req.getSession();
		ses1.setAttribute("Email", email);
		ses1.setAttribute("pwd", password);
		CustomerService customerService = new CustomerService();
		boolean status = customerService.loginCustomer(customer);
		String name = null;

		name = customer.getFirstName() + customer.getLastName();

		ses1.setAttribute("name", name);

		if (status) {

			RequestDispatcher rd = req.getRequestDispatcher("customerinfo.jsp");
			try {
				rd.forward(req, resp);
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}
		} else {
			HttpSession ses = req.getSession();
			ses.setAttribute("LogStatus", "false");
			RequestDispatcher rd = req.getRequestDispatcher("signinsignup.jsp");
			try {
				rd.forward(req, resp);
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}
		}
	}
}
