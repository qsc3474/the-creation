package creation.htBoard.controller.htNotice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.htBoard.htmodel.dto.HTNoticeDTO;
import creation.htBoard.htmodel.service.HTNoticeService;

@WebServlet("/ht/NTC/notice/insert")
public class HTNoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/htBoard/htNotice/htInsertNoticeForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int no = 1; /*Integer.valueOf(request.getParameter("memberNo"));*/
		int memNo = ((HTNoticeDTO) request.getSession().getAttribute("loginMember")).getNo();
		
		HTNoticeDTO newhtNotice = new HTNoticeDTO();
		newhtNotice.setTitle(title);
		newhtNotice.setContent(content);
		newhtNotice.setMemNo(memNo);
		newhtNotice.getWriter().setNo(no);
		
		HTNoticeService noticeService = new HTNoticeService();
		int result = noticeService.insertNotice(newhtNotice);
		
		String path = "";
		if(result > 0) {
			path ="/WEB-INF/views/common/thSuccess.jsp";
			request.setAttribute("successCode", "thInsertNotice");
		}else {
			path ="/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "공지사항 등록에 실패하셨습니다.");
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}




