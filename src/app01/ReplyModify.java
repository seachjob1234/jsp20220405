package app01;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.ReplyDao;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class ReplyModify
 */
@WebServlet("/reply/modify")
public class ReplyModify extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyModify() {
        super();
        // TODO Auto-generated constructor stub
    }
    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//request 파라미터 수집 가공
		String boardIdStr = request.getParameter("boardId"); //jsp에 추가하세요
		String replyIdStr = request.getParameter("replyId");
		String content = request.getParameter("replyContent"); //jsp와 매칭 x 적절히 수정 이라는데 내가 어떻게 알아아아아아
		
		
		
		ReplyDto replyDto = new ReplyDto();
		replyDto.setContent(content);
		replyDto.setBoardId(Integer.parseInt(boardIdStr));
		replyDto.setId(Integer.parseInt(replyIdStr));
		
		
		//dao일시키고
		ReplyDao dao = new ReplyDao();
		boolean success = false;
		
		try (Connection con = ds.getConnection()) {
			dao.update(con,replyDto);			
		} catch (Exception e) {
			e.printStackTrace();
		}	
		//결과 셋팅
		
		//하지마러
		String location = request.getContextPath() + "/board/get" + "?" + "id=" + boardIdStr;	
		response.sendRedirect(location);
	
	
	
	}

}
