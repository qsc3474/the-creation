package creation.book.hp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.hp.model.dto.HPbookDTO;
import creation.book.hp.model.service.HPbookService;
import creation.member.model.dto.MemberDTO;



/**
 * Servlet implementation class HPbookSelectServlet
 */
@WebServlet("/hp/book/select")
public class HPbookSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/book/bookCheck.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int bookMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		HPbookDTO book =new HPbookDTO();
		book.setMemberNo(bookMember);
		
		
		HPbookService bookService = new HPbookService();
		List<HPbookDTO> HPBookList =bookService.selectBook(book);
		
		System.out.println(HPBookList);
		String path="";
		
		if(!HPBookList.isEmpty()) {
			path="";
			request.setAttribute("book", "bookSuccess");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
		}
	
	


