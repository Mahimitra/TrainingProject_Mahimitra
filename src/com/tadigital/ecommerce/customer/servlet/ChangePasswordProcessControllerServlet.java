package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;
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

@WebServlet("/change")

public class ChangePasswordProcessControllerServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String STATUS = "ChangeStatus";
	public static final String PAGE = "customerinfo.jsp";

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
		String oldpwd = req.getParameter("f1");
		String newpwd = req.getParameter("f2");
		String repwd = req.getParameter("f3");

		Customer customer = new Customer();
		HttpSession ses = req.getSession();

		String email = (String) ses.getAttribute("Email");
		customer.setEmail(email);
		String pwd = (String) ses.getAttribute("pwd");
		customer.setPassword(pwd);

		if (!oldpwd.equals(pwd)) {
			HttpSession ses1 = req.getSession();
			ses1.setAttribute(STATUS, "wrong");
			RequestDispatcher rd = req.getRequestDispatcher(PAGE);
			try {
				rd.forward(req, resp);
				return;
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}
		}
		if (!newpwd.equals(repwd)) {
			HttpSession ses2 = req.getSession();
			ses2.setAttribute(STATUS, "nomatch");
			RequestDispatcher rd = req.getRequestDispatcher(PAGE);
			try {
				rd.forward(req, resp);
				return;
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}

		}

		CustomerService customerService = new CustomerService();
		boolean status = customerService.changePasswordCustomer(customer, newpwd);
		if (status) {
			HttpSession ses4 = req.getSession();
			ses4.setAttribute(STATUS, "success");
			RequestDispatcher rd = req.getRequestDispatcher(PAGE);
			try {
				rd.forward(req, resp);
				return;
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}
		} else {
			HttpSession ses3 = req.getSession();
			ses3.setAttribute(STATUS, "fail");
			RequestDispatcher rd = req.getRequestDispatcher(PAGE);
			try {
				rd.forward(req, resp);
				return;
			} catch (ServletException | IOException e) {

				e.printStackTrace();
			}
		}
	}
}
