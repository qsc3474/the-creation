package creation.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.member.model.dto.MemberDTO;
import creation.member.model.service.MemberService;

/**
 * Servlet implementation class MemberRegistServlet
 */
@WebServlet("/member/regist")
public class MemberRegistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "";
		
		if(request.getHeader("referer").equals(
		"http://localhost:8800/creation/member/regist")) {
		
		path = "/WEB-INF/views/member/memberRegistStep2.jsp";

		
		} else {
			
			path = "/WEB-INF/views/member/memberRegistStep1.jsp";
			
		}
		
		if(request.getHeader("referer").equals(
				"http://localhost:8800/creation/member/regist") &&
				"2".equals(request.getParameter("step"))){
			
			path = "/WEB-INF/views/member/memberRegistStep3.jsp";
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDTO requestMember = new MemberDTO();
		
//		System.out.println("memberController requestMember : " + requestMember);
		
//		int result = new MemberService().registMember(requestMember);
		
		int result = 1;
		
		String page = "";
		
		if(result > 0) {
			
			page = "/WEB-INF/views/member/memberRegistStep4.jsp";
			
		} else {
			
			page = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원 가입 실패!");
			
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
	}

}
