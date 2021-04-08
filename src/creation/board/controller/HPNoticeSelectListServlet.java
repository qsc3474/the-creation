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
 * Servlet implementation class HPNoticeSelectListServlet
 */
@WebServlet("/hp/notice/select/list")
public class HPNoticeSelectListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	String currentPage = request.getParameter("currentPage");
	
	System.out.println(currentPage);
	
	System.out.println("여기1");
	
	int pageNo = 1;
	
	if(currentPage != null && !"".equals(currentPage)) {
		
		pageNo = Integer.valueOf(currentPage);
		
		if(pageNo < 1) {
			
			pageNo = 1;
			
		}
		HPNoticeBoardService boardService = new HPNoticeBoardService();
		System.out.println("여기2");

		int totalCount = boardService.selectTotalCount();
		
		String recordsPerPage = request.getParameter("recordsPerPage");
		
		int limit = 10;
		
		if(recordsPerPage != null && !"".equals(recordsPerPage)) {
			
			limit = Integer.valueOf(recordsPerPage);
			
		}
		
		int buttonAmount = 10;
		
		PageInfoDTO pageInfo = Pagenation.getPageInfo(pageNo, totalCount, limit, buttonAmount);
		
		List<HPBoardDTO> HPNCTList = boardService.selectList(pageInfo);
		

		String path = "";
		
		if(!HPNCTList.isEmpty()) {
			
			path = "/WEB-INF/views/board/HPnotice.jsp";
			request.setAttribute("HPnotice", HPNCTList);
			request.setAttribute("pageInfo", pageInfo);
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지를 조회하지 못했습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}
	}
	
	}

	

