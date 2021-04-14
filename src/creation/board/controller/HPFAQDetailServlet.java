package creation.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.service.HPFAQBoardService;

@WebServlet("/hp/faq/detail")
public class HPFAQDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String boardNo = request.getParameter("no");
		int no = Integer.valueOf(boardNo);
		HPBoardDTO board = new HPFAQBoardService().selectDetail(no);
		
		String path = "";
		
		if(board != null) {
			
			path = "/WEB-INF/views/board/detailBoard.jsp";
			request.setAttribute("board", board);
			
		} else {
			
			path = "/WEB-INF/view/common/failed.jsp";
			request.setAttribute("message", "게시글을 조회할 수 없습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
