package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import chap14.javaBeans.Customer;
import chap14.javaBeans.Customer1;

/**
 * Servlet implementation class S14Servlet08
 */
@WebServlet("/S14Servlet08")
public class S14Servlet08 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public S14Servlet08() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "SELECT FirstName, LastName, BirthDate FROM Employees";
		List<Customer1> list = new ArrayList<>();
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {

			while (rs.next()) {
				Customer1 customer = new Customer1();

				String firstname = rs.getString(1);
				String lastname = rs.getString(2);
				String birthdate = rs.getString(3);

				customer.setFirstName(firstname);
				customer.setLastName(lastname);
				customer.setBirthDate(birthdate);

				list.add(customer);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("customers", list);

		String path = "/WEB-INF/view/chap14/ex06.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
