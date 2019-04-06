package com.tadigital.ecommerce.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tadigital.ecommerce.customer.service.CustomerService;

/**
 * Servlet implementation class ReportControllerServlet
 */
@WebServlet("/report")

public class ReportControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportControllerServlet() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) {
		CustomerService customerService = new CustomerService();

		HttpSession ses = req.getSession();
		String est = (String) ses.getAttribute("EST");
		if (est != null) {

			boolean status = customerService.sendErrorMail(est);
			if (status) {

				RequestDispatcher rd = req.getRequestDispatcher("Myexception.jsp");
				try {
					rd.forward(req, res);
				} catch (ServletException | IOException e) {

					e.printStackTrace();
				}

			}

			else {
				RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
				try {
					rd.forward(req, res);
				} catch (ServletException | IOException e) {

					e.printStackTrace();
				}
			}
		}
	}
}
