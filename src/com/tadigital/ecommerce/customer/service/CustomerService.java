 package com.tadigital.ecommerce.customer.service;

import java.util.ArrayList;
import java.util.Calendar;
 import java.io.File;
 import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
 import java.util.Calendar;
 import java.util.Collection;
 import java.util.Properties;

 import javax.mail.Message;
 import javax.mail.MessagingException;
 import javax.mail.PasswordAuthentication;
 import javax.mail.Session;
 import javax.mail.Transport;
 import javax.mail.internet.InternetAddress;
 import javax.mail.internet.MimeMessage;
 import javax.servlet.http.Part;

 import com.tadigital.ecommerce.customer.dao.CustomerDao;
 import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	CustomerDao customerDao = new CustomerDao();
	
	
	public boolean loginCustomer(Customer customer) {
		boolean status = customerDao.selectCustomerByEmailAndPassword(customer);
		
		return status;
	
	}
	public boolean registerCustomer(Customer customer) {
		boolean status =customerDao.insertCustomer(customer);
		if(status) {
			sendEmail(customer.getFirstName()+" "+customer.getLastName(),customer.getEmail());
		}
		
		return status;
	}
	public String sendEmail(String name,String mail)
	{
		String status="NOT SENT";
		Properties properties=new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.socketFactory.class",	"javax.net.ssl.SSLSocketFactory");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");
		
		//CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties,new javax.mail.Authenticator() {
																	protected PasswordAuthentication getPasswordAuthentication() {
																		return new PasswordAuthentication("chnagamani05@gmail.com","9652841738");
																	}
																});
		try {
			//COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("chnagamani05@gmail.com"));
			mimeMessage.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(mail));
			
			mimeMessage.setContent("<h1>hello...You have registered and ur credentials are used to send spam messages.</h1>",	
		             "text/html");

			//SEND MAIL
			Transport.send(mimeMessage);
			
			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		} 
		
		return status;
	}
/*	public ArrayList<Employee> getAllEmployees() {
		ArrayList<Employee> employeeList = employeeDao.selectAllEmployees();
		
		return employeeList;
	}*/
}