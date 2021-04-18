package creation.board.controller.review;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.service.HPReviewBoardService;
import creation.common.paging.Pagenation;

@WebServlet("/hp/review/select/list")
public class HPReviewSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String currentPage = request.getParameter("currentPage");

		int pageNo = 1;
		
		if (currentPage != null && !"".equals(currentPage)) {

			pageNo = Integer.valueOf(currentPage);

			if (pageNo < 1) {

				pageNo = 1;

			}
		}
		
		HPReviewBoardService boardService = new HPReviewBoardService();

		int totalCount = boardService.selectTotalCount();

		int limit = 10;

		int buttonAmount = 10;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);

		List<HPBoardDTO> boardList = boardService.selectList(pageInfo);

		System.out.println(boardList);
		String path = "";

		if (!boardList.isEmpty()) {

			path = "/WEB-INF/views/board/boardReview.jsp";
			request.setAttribute("boardList", boardList);
			request.setAttribute("pageInfo", pageInfo);

		} else {

			path = "/WEB-INF/views/board/boardReview.jsp";
			request.setAttribute("boardList", boardList);
			request.setAttribute("pageInfo", pageInfo);

		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}

}
