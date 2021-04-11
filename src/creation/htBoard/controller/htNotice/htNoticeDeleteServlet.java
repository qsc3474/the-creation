package creation.htBoard.controller.htNotice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTNoticeService;


@WebServlet("/ht/NTC/notice/delete")
public class htNoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.valueOf(request.getParameter("no"));
		
		HTNoticeService noticeService = new HTNoticeService();
		HTNoticeDTO notice = noticeService.selectNoticeDetail(no);
		
		
		String path ="";
		if(notice != null) {
			path = "/WEB-INF/views/htBoard/htNotice/thUpdateForm.jsp";
			request.setAttribute("notice", notice);
		}else {
			 path = "/WEB-INF/views/common/failed.jsp";
			 request.setAttribute("message", "공지사항 수정용 조회하기 실패!");
		}
		request.getRequestDispatcher(path).forward(request, response);
	
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
