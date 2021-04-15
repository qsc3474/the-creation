package creation.book.hp.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.book.hp.model.dto.HPbookDTO;
import creation.book.hp.model.service.HPbookService;
import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;


/**
 * Servlet implementation class HPbookInsertServlet
 */
@WebServlet("/hp/book/insert")
public class HPbookInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/views/book/book.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int bookMember = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		String petName =request.getParameter("petName");
		String kind =request.getParameter("kind");
		String gender = request.getParameter("gender");
		int age = Integer.valueOf(request.getParameter("age"));
		String neut =request.getParameter("neut");
		java.sql.Date bookDate= java.sql.Date.valueOf(request.getParameter("date"))  ;
		
		String subject = request.getParameter("subject");
		String subName = request.getParameter("subName");
		
		System.out.println(bookMember);
		System.out.println(petName);
		System.out.println(kind);
		System.out.println(gender);
		System.out.println(neut);
//		System.out.println(specaility);
		System.out.println(bookDate);
		
		
		System.out.println(subject);
		System.out.println(subName);
		
		HPbookDTO newBook =new HPbookDTO();
		newBook.setPetCode(new PetDTO());
		newBook.setMemberNo(new MemberDTO());
		
		newBook.getMemberNo().setNo(bookMember);
		
		newBook.getPetCode().setName(petName);
		newBook.getPetCode().setPetKind(kind);
		newBook.getPetCode().setGender(gender);
		newBook.getPetCode().setAge(age);
		newBook.getPetCode().setPetNeutralization(neut);
		newBook.setTime(bookDate);
		newBook.setSubjectCode(subject);
		newBook.setClinicCode(subName);
		
		
		System.out.println(newBook);
		
		
		HPbookService bookService = new HPbookService();
		int result =bookService.insertBook(newBook);
		
		String path="";
		
		if(result>0) {
			path="";
			request.setAttribute("book", "bookSuccess");
		}else {
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "예약에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
