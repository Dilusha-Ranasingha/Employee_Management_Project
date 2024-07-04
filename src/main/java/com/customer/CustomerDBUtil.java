package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
// ------------------------------------------------ validation(part1)------------------------------------------------------

	public static boolean validateLogin(String userName, String password) {
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "select * from customer where username='" + userName + "' and password='" + password + "'";
			// run sql query
			rs = stmt.executeQuery(sql); // executeQuery use? Because it is use only insert and delete
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

// ------------------------------------------------ getCustomer(part1)------------------------------------------------------

	public static List<Customer> getCustomer(String userName) {
		ArrayList<Customer> cus = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "select * from customer where username='" + userName + "'";
			// run sql query
			rs = stmt.executeQuery(sql); // executeQuery use? Because it is use only insert and delete

			// ifelse condition to check validation
			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);

				Customer c = new Customer(id, name, email, phone, userU, passU);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}
	
	
	
	
	
	
	

// ------------------------------------------------ insert_customer(part2)------------------------------------------------------

	public static boolean insertcustomer(String name, String email, String phone, String username, String password) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "insert into customer values (0,'" + name + "','" + email + "','" + phone + "','" + username
					+ "','" + password + "')";
			// run sql query
			int rs = stmt.executeUpdate(sql);

			// there are 2 returns have executeUpdate 0 and 1 it is assign in to rs check
			// using if else and return is it insert to DB or not
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}

// ------------------------------------------------ update_customer(part2)------------------------------------------------------

	public static boolean updatecustomer(String id, String name, String email, String phone, String uname,
			String pass) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "update customer set name='" + name + "',email='" + email + "',phone='" + phone
					+ "',username='" + uname + "',password='" + pass + "'" + "where id='" + id + "'";
			// run sql query
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

// ------------------------------------------------ retrive_upadetde_customer(part2)------------------------------------------------------

	public static List<Customer> getCustomerDetails(String Id) {

		int converID = Integer.parseInt(Id);

		ArrayList<Customer> cus = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "select * from customer where id='" + converID + "'";
			// run sql query
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);

				Customer c = new Customer(id, name, email, phone, username, password);
				cus.add(c);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return cus;
	}

// ------------------------------------------------ delete_customer(part2)------------------------------------------------------

	public static boolean deletecustomer(String id) {
		int converID = Integer.parseInt(id);

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			// sql query
			String sql = "delete from customer where id= '" + converID + "'";
			// run sql query
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	//------------------------------------------------ insert_employee----------------------------------------------------------

	public static boolean insertemployee(String name, String age, String email, String phone, String adres, String slry) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into employee values (0,'" + name + "','" + age + "','" + email + "','" + phone
					+ "','" + adres + "','"+slry+"')";
			
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	
	
	
	
	
	
	
// ------------------------------------------------ getAllEmployee-----------------------------------------------------------------
	
	public static List<Employee> getAllEmployee() {
		ArrayList<Employee> emp = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "select * from employee";
			
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int Eid = rs.getInt(1);
				String name = rs.getString(2);
				String age = rs.getString(3);
				String email = rs.getString(4);
				String phone = rs.getString(5);
				String adres = rs.getString(6);
				String slry = rs.getString(7);

				Employee e = new Employee(Eid, name, age, email, phone, adres, slry);
				emp.add(e);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	
	
	
	
	
	
	
// ------------------------------------------------ update_Employee-------------------------------------------------------------

	public static boolean updateemployee(String eid, String name, String age, String email, String phone,String adres, String slry) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();

			String sql = "update employee set name='" + name + "',age='" + age + "',email='" + email
					+ "',phone='" + phone + "',adres='" + adres + "',slry='"+slry+"'" + "where Eid='" + eid + "'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}
	
	
	
	
	
	
// ------------------------------------------------ retrive_upadetde_employee-------------------------------------------------------------

		public static List<Employee> getEmployeeDetails(String eid) {

			int converID = Integer.parseInt(eid);

			ArrayList<Employee> emp = new ArrayList<>();

			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();

				String sql = "select * from employee where Eid='" + converID + "'";
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					int Eid = rs.getInt(1);
					String name = rs.getString(2);
					String age = rs.getString(3);
					String email = rs.getString(4);
					String phone = rs.getString(5);
					String adres = rs.getString(6);
					String slry = rs.getString(7);

					Employee e = new Employee(Eid, name, age, email, phone, adres, slry);
					emp.add(e);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
			return emp;
		}

		

		
		
		
// ------------------------------------------------ delete_employee------------------------------------------------------------

		public static boolean deleteemployee(String id) {
			int converID = Integer.parseInt(id);

			try {
				con = DBConnect.getConnection();
				stmt = con.createStatement();

				String sql = "delete from employee where Eid= '" + converID + "'";
				int rs = stmt.executeUpdate(sql);

				if (rs > 0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
			return isSuccess;
		}

}
