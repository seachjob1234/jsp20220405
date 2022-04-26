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

import chap14.javaBeans.Customers;

/**
 * Servlet implementation class ServletPractice01
 */
@WebServlet("/ServletPractice01")
public class ServletPractice01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletPractice01() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, City, PostalCode, Country " + "FROM Customers"
				+ "LIMIT ?,10";

		String pageNumStr = request.getParameter("page");

		if (pageNumStr == null || pageNumStr.trim().equals("")) {
			pageNumStr = "1";
		}
		int pageNum = Integer.parseInt(pageNumStr);
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Customers> list = new ArrayList<>();

		try (Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {

			while (rs.next()) {
				Customers cs = new Customers();
				cs.setId(rs.getInt(1));
				cs.setName(rs.getString(2));
				cs.setAddress(rs.getString(3));
				cs.setCity(rs.getString(4));
				cs.setPostCode(rs.getString(5));
				cs.setCountry(rs.getString(6));
				list.add(cs);
			}
			request.setAttribute("customerList", list);

		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/chap14/Practice01.jsp"; // 직원 목록이 table로 출력
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
