package creation.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPNoticeBoardService;
import creation.member.model.dto.MemberDTO;

/**
 * Servlet implementation class HPBoardDeleteServlet
 */
@WebServlet("/hp/board/delete")
public class HPBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		int no = Integer.valueOf(request.getParameter("memberNo"));
		String content = request.getParameter("content");
		String category = request.getParameter("boardCategory");
		
		HPBoardDTO deleteBoard = new HPBoardDTO();
		
		deleteBoard.setWriter(new MemberDTO());
		
		deleteBoard.setTitle(title);
		deleteBoard.setContent(content);
		deleteBoard.setCategoryNo(category);
		deleteBoard.getWriter().setNo(no);
		
		System.out.println(deleteBoard);
		
		HPNoticeBoardService boardService = new HPNoticeBoardService();
		int result = boardService.deleteBoard(deleteBoard);
		
		String path = "";
		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteboard");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	
	}

}
