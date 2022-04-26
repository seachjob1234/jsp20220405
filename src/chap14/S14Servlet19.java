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

import chap14.javaBeans.Customer;
import chap14.javaBeans.Customers;

/**
 * Servlet implementation class S14Servlet19
 */
@WebServlet("/S14Servlet19")
public class S14Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public S14Servlet19() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*String sql = "SELECT CustomerID, CustoerName, City, Country, PostalCode " + "FROM Customers "
				+ "ORDER BY CustomerId" + "LIMIT ?,10";

		String pageNumStr = request.getParameter("page");
		if (pageNumStr == null || pageNumStr.trim().equals("")) {
			pageNumStr = "1";
		}
		int pageNum = Integer.parseInt(pageNumStr);

		int startRowNum = (pageNum - 1) * 10;
		List<Customers> list = new ArrayList<>();
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, startRowNum);
			try (ResultSet rs = pstmt.executeQuery();) {
				
				
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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		String path = "/WEB-INF/view/chap14/ex13.jsp"; // 직원 목록이 table로 출력
		request.getRequestDispatcher(path).forward(request, response);*/
		String sql = "SELECT CustomerID, CustomerName, City, Country, PostalCode "
				+ "FROM Customers "
				+ "ORDER BY CustomerID "
				+ "LIMIT ?, 10";
		
		int total = getTotal(); 
		
		String pageNumStr = request.getParameter("page");
		
		if (pageNumStr == null || pageNumStr.trim().equals("")) {
			pageNumStr = "1";
		}
		int pageNum = Integer.parseInt(pageNumStr);
		int startPage = (pageNum - 1) / 10 * 10 + 1;
		int endPage = startPage + 9;
		
		int startRowNum = (pageNum - 1) * 10;
		
		int lastPage = (total-1) / 10 + 1;
		
		endPage = Math.min(lastPage, endPage);
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		List<Customers> list = new ArrayList<>();
		
		try (Connection con = ds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setInt(1, startRowNum);
			try (ResultSet rs = pstmt.executeQuery();) {
				
				while (rs.next()) {
					Customers cs = new Customers();
					cs.setId(rs.getInt(1));
					cs.setName(rs.getString(2));
					cs.setCity(rs.getString(3));
					cs.setCountry(rs.getString(4));
					cs.setPostCode(rs.getString(5));
					
					list.add(cs);
				}
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("customerList", list);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prevPage", startPage - 10);
		request.setAttribute("nextPage", startPage + 10);
		request.setAttribute("currentPage", pageNum);
		request.setAttribute("lastPage", lastPage);
		
		String path = "/WEB-INF/view/chap14/ex13.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	private int getTotal() {
		String sql = "SELECT COUNT(*) FROM Customers";
		
		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		
		try (Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			
			if (rs.next()) {
				return rs.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return 0;

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
