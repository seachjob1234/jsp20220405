package chap14;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S14Servlet01
 */
@WebServlet("/S14Servlet01")
public class S14Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S14Servlet01() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//database에서 recoreds 가져오기
		//연결설정
		//statment 객체생성
		//쿼리실행
		//실행결과정제
		//자원닫기
		
		
		
		// database에서 records 가져오기
		// request에 records넣기
		// jsp로 forword
	/*	List<String> cities = new ArrayList<>();
		cities.add("Berlin");
		cities.add("London");
		cities.add("Madrid");
		request.setAttribute("cities", cities);
		String location = "/WEB-view/chap14/ex01.jsp";
		request.getRequestDispatcher(location).forward(request, response);
	}*/

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
