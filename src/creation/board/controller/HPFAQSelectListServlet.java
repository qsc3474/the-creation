package creation.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPFAQBoardDTO;
import creation.board.model.service.HPFAQBoardService;

@WebServlet("/hp/faq/select/list")
public class HPFAQSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("입력");
		List<HPFAQBoardDTO> HPFAQList = new HPFAQBoardService().selectList();
		System.out.println(HPFAQList);
		String path = "";
		
		if(!HPFAQList.isEmpty()) {
			
			path = "/WEB-INF/views/board/boardFAQ.jsp";
			request.setAttribute("HPFAQList", HPFAQList);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "FAQ를 조회하지 못했습니다.");
			
		}
		System.out.println("출력");
		request.getRequestDispatcher(path).forward(request, response);
	
	}

}
