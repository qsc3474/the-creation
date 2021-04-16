package creation.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.service.HPNoticeBoardService;
import creation.common.paging.Pagenation;

/**
 * Servlet implementation class HPBoardDeleteServlet
 */
@WebServlet("/hp/board/delete")
public class HPBoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int boardNo = Integer.valueOf(request.getParameter("no"));
		
		HPNoticeBoardService boardService = new HPNoticeBoardService();
		
		HPBoardDTO deleteBoard = new HPBoardDTO();
		deleteBoard.setNo(boardNo);
		
		int result = boardService.deleteBoard(deleteBoard);
		
		String path = "";
		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "deleteBoard");
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "게시글 작성에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
