package servlet.practice;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class practiceServlet05
 */
@WebServlet("/practiceServlet05")
public class practiceServlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public practiceServlet05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName,Country,City FROM Customers WHERE CustomerId = 1";
		ServletContext application = getServletContext();
		DataSource ds= (DataSource) application.getAttribute("dbpool");
		try(Connection con = ds.getConnection();
				Statement stmt = con.createStatement();
				ResultSet rs =stmt.executeQuery(sql)){
			if(rs.next()) {
				String name = rs.getString(1);
				String country = rs.getNString(2);
				String city = rs.getNString(3);
				
				request.setAttribute("name", name);
				request.setAttribute("country", country);
				request.setAttribute("city", city);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		String path="/WEB-INF/view/chap14/ex02.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
