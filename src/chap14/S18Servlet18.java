package chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
 * Servlet implementation class S18Servlet18
 */
@WebServlet("/S14Servlet18")
public class S18Servlet18 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S18Servlet18() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, City, PostalCode, Country " + "FROM Customers " + "ORDER BY CustomerID ";
		List<Customers> list = new ArrayList<>();

		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

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

		String path = "/WEB-INF/view/chap14/ex12.jsp"; // 직원 목록이 table로 출력
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");

		String sql = "DELETE FROM Customers " + "WHERE CustomerID = ? ";
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		int result = 0;
		try (Connection con = ds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, Integer.parseInt(id));

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		String location = "S14Servlet18";

		if (result == 1) {
			location += "?success=true";
		} else {
			location += "?success=false";
		}

		response.sendRedirect(location);
	}

}
