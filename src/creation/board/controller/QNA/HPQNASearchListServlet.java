package creation.board.controller.QNA;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.board.model.service.HPQNABoardService;
import creation.common.paging.Pagenation;

@WebServlet("/hp/qna/search/list")
public class HPQNASearchListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String condition = request.getParameter("searchCondition");
		String value = request.getParameter("searchValue");
		
		System.out.println("condition: " + condition);
		System.out.println("value: " + value);
		
		String currentPage = request.getParameter("currentPage");
		
		/* 1. 현재페이지 관련 설정 */
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.valueOf(currentPage);
			
			if(pageNo <= 0) {
				pageNo = 1;
			}
		}
		
		/* 2. 검색 조건에 맞는 게시물 갯수 조회 */
		HPQNABoardService boardService = new HPQNABoardService();
		int totalCount = boardService.searchBoardCount(condition, value);
		
		System.out.println("totalSearchBoardCount : " + totalCount);
	
		/* 3. 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;
		
		/* 4. 한 페이지에 보여질 페이징 버튼의 수 */
		int buttonAmount = 10;
		
		/* 5. 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스 반환 받기 */
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		System.out.println("pageInfo : " + pageInfo);
		
		/* 6. 검색한 게시글을 조회 해 온다. */
		List<HPBoardDTO> boardList = boardService.searchBoardList(pageInfo, condition, value);
		
		System.out.println(boardList);
		
		String path = "";
		if(!boardList.isEmpty()) {
			path = "/WEB-INF/views/board/boardQNA.jsp";
			request.setAttribute("boardList", boardList);
			request.setAttribute("pageInfo", pageInfo);
			request.setAttribute("searchCondition", condition);
			request.setAttribute("searchValue", value);
		} else {
			path = "/WEB-INF/views/board/boardQNA.jsp";
			request.setAttribute("boardList", boardList);
			request.setAttribute("pageInfo", pageInfo);
			request.setAttribute("searchCondition", condition);
			request.setAttribute("searchValue", value);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
