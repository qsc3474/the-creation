package creation.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;
import creation.member.model.dto.MemberDTO;

@WebServlet("/hp/board/insert")
public class HPBoardInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/board/boardInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		int no = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String content = request.getParameter("content");
		String category = request.getParameter("boardCategory");
		
		HPBoardDTO insertBoard = new HPBoardDTO();
		
		insertBoard.setWriter(new MemberDTO());
		
		insertBoard.setTitle(title);
		insertBoard.setContent(content);
		insertBoard.setCategoryNo(category);
		insertBoard.getWriter().setNo(no);
		
		System.out.println(insertBoard);
		
		HPFAQBoardService boardService = new HPFAQBoardService();
		int result = boardService.insertBoard(insertBoard);
		
		String path = "";
		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "insertboard");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
