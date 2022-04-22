package chap14;

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
 * Servlet implementation class S14Servlet02
 */
@WebServlet("/S14Servlet02")
public class S14Servlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerName FROM Customers WHERE CustomerID =1";

		ServletContext application = getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");

		try(
				//1연결 얻기
				Connection con = ds.getConnection();
				//2STATMENT 생성
				Statement stmt = con.createStatement();
				//3쿼리실행
				ResultSet rs = stmt.executeQuery(sql);
				){
			//4결과 경제
			if(rs.next()) {
				String customerName = rs.getString(1);
				System.out.println(customerName);
			}		
	}catch (Exception e) {
		e.printStackTrace();
	}
		//5 자원닫고System.out.println(customerName);트라이 케치로
		
		
}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
