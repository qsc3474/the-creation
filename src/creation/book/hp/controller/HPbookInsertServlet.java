package creation.book.hp.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.hp.model.dto.HPbookDTO;
import creation.member.model.dto.MemberDTO;


/**
 * Servlet implementation class HPbookInsertServlet
 */
@WebServlet("/hp/book")
public class HPbookInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/book/book.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String subject = request.getParameter("subject");
		String subName = request.getParameter("subName");
		String specaility = request.getParameter("specaility");
		String petName =request.getParameter("petName");
		int bookMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		System.out.println(subject);
		System.out.println(subName);
		System.out.println(specaility);
		System.out.println(bookMember);
		
		HPbookDTO newBook =new HPbookDTO();
		
		
		
	}

}
