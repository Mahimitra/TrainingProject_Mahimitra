package com.tadigital.ecommerce.customer.service;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;



import com.tadigital.ecommerce.customer.dao.CustomerDao;
import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerService {
	
	protected static final String CID = "Content-ID";
	CustomerDao customerDao = new CustomerDao();

	public boolean loginCustomer(Customer customer) {
		return customerDao.selectCustomerByEmailAndPassword(customer);

	}

	public boolean changePasswordCustomer(Customer customer, String newpwd) {
		return customerDao.changePassword(customer, newpwd);

	}

	public boolean registerCustomer(Customer customer) {
		boolean status = customerDao.insertCustomer(customer);
		if (status) {
			sendEmail(customer.getFirstName() + " " + customer.getLastName(), customer.getEmail());
		}

		return status;
	}

	public String sendEmail(String name, String mail) {
		
		Properties properties = new Properties();
		InputStream inputStream = getClass().getResourceAsStream("email.properties");
		try {
			properties.load(inputStream);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		
		String host=properties.getProperty("host");
		String port1=properties.getProperty("port1");
		String cls=properties.getProperty("cls");
		String auth=properties.getProperty("authentication");
		String port2=properties.getProperty("port2");
		String username=properties.getProperty("sender");
		String password=properties.getProperty("password");
		 final String EMAIL = username;
		String status = "NOT SENT";
		
		properties.put("mail.smtp.host",host);
		properties.put("mail.smtp.socketFactory.port",port1);
		properties.put("mail.smtp.socketFactory.class", cls);
		properties.put("mail.smtp.auth",auth);
		properties.put("mail.smtp.port", port2);

		// CONNECT TO MAIL SERVER

		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(EMAIL,password);
			}
		});
		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress(EMAIL));
			mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(mail));
			mimeMessage.setSubject("Welcome to TA Digital!");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='#DAF7A6'>Dear <i><font color='#FF7A33'>" + name + "</font></i>,<br/><br/>"
					+ "<img src='cid:image1'><br/><h2><font color='#C70039'>Welcome to TA Digital Family!</font></h2>"
					+ "<br/><font color='#900C3F'>We are excited to have you on-board.</font>"
					+ "<br/><br/><br/><font color='#581845'>Stay tuned and we have got some great things in store for you.</font>"
					+ "<br/><br/><br/><font color='#FFC300'>Happy Shopping!<br/>TA Digital<br/><br/></font><img src='cid:image'></body>";
			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			DataSource fds = new FileDataSource(
					"D:\\Trainee Engineers March 2019\\workspace\\TrainingProject_Mahimitra\\WebContent\\images\\download.jfif");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader(CID, "<image>");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			fds = new FileDataSource(
					"D:\\Trainee Engineers March 2019\\workspace\\TrainingProject_Mahimitra\\WebContent\\images\\logo.png");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader(CID, "<image1>");
			mp.addBodyPart(mbp1);

			mimeMessage.setContent(mp);

			// SEND MAIL
			Transport.send(mimeMessage);

			status = "SENT";
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}

		return status;
	}

	public boolean sendErrorMail(String est) {

		
		// MAIL SERVER CONFIGURATION
		Properties properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.socketFactory.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.transport.protocol", "smtp");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.port", "465");

		// CONNECT TO MAIL SERVER
		Session session = Session.getDefaultInstance(properties, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("chnagamani05@gmail.com", "9652841738");
			}
		});
		try {
			// COMPOSE MESSAGE
			MimeMessage mimeMessage = new MimeMessage(session);
			mimeMessage.setFrom(new InternetAddress("chirala.mahi@gmail.com"));
			mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("chirala.mahi@gmail.com"));
			mimeMessage.setSubject("Error Report");
			MimeMultipart mp = new MimeMultipart();
			MimeBodyPart mbp1 = new MimeBodyPart();

			String msg = "<body bgcolor='#DAF7A6'>Here is your report... <i><font color='#FF7A33'>"
					+ "</font></i>,<br/><br/>" + "<h2><font color='#C70039'>Report</font><img src='cid:image'></h2>"
					+ "<div class=\"alert alert-danger text-left\">" + est + "</div>" + "<br/>";
			mbp1.setContent(msg, "text/html");
			mp.addBodyPart(mbp1);

			mbp1 = new MimeBodyPart();
			DataSource fds = new FileDataSource(
					"D:\\Trainee Engineers March 2019\\workspace\\TrainingProject_Mahimitra\\WebContent\\images\\error.png");
			mbp1.setDataHandler(new DataHandler(fds));
			mbp1.setHeader(CID, "<image>");
			mp.addBodyPart(mbp1);

			mimeMessage.setContent(mp);

			// SEND MAIL
			Transport.send(mimeMessage);
			return true;

		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
		return false;

	}
	

	

	
}
