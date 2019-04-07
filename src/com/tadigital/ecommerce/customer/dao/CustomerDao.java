package com.tadigital.ecommerce.customer.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;

import com.tadigital.ecommerce.customer.entity.Customer;

public class CustomerDao extends Dao {

	public boolean selectCustomerByEmailAndPassword(Customer customer) {
		boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM customer_info WHERE email = '" + customer.getEmail() + "' AND password = '"
					+ customer.getPassword() + "'";

			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				status = true;

				customer.setId(rs.getInt(1));
				customer.setFirstName(rs.getString(2));
				customer.setLastName(rs.getString(3));

			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeResultSet(rs);
			closeConnection(con);
		}

		return status;
	}

	public boolean insertCustomer(Customer customer) {
		boolean status = false;

		Connection con = openConnection();
		Statement stmt = openStatement(con);

		try {
			String sql = "INSERT INTO customer_info(fname, lname,email,password) " + "VALUES('"
					+ customer.getFirstName() + "', '" + customer.getLastName() + "', '" + customer.getEmail() + "', '"
					+ customer.getPassword() + "')";

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				status = true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return status;
	}

	public boolean changePassword(Customer customer, String newpwd) {
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		try {
			String sql = "UPDATE customer_info SET password='" + newpwd + "'WHERE email='" + customer.getEmail() + "'";

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				return true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return false;
	}

	public boolean registerPersonalDetails(Customer customer) {
		Connection con = openConnection();
		Statement stmt = openStatement(con);
		try {
			String sql = "UPDATE customer_info SET  gender='" + customer.getGender() + "',address='"
					+ customer.getAddress() + "',city='" + customer.getCity() + "',zip='" + customer.getZip() + "',state='"
					+ customer.getState() + "',country='" + customer.getCountry() + "',contact='" + customer.getContact() + "'WHERE email='"
					+ customer.getEmail() + "'";

			int rows = stmt.executeUpdate(sql);
			if (rows != 0) {
				return true;
			}
		} catch (SQLException sqle) {
			sqle.printStackTrace();
		} finally {
			closeStatement(stmt);
			closeConnection(con);
		}

		return false;

	}

}