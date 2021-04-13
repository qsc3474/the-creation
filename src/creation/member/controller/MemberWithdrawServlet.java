package creation.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import creation.member.model.dto.MemberDTO;
import creation.member.model.service.MemberService;

@WebServlet("/member/withdraw")
public class MemberWithdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int no = ((MemberDTO)request.getSession().getAttribute("loginMember")).getNo();
		
		int result = new MemberService().withdrawMember(no);
		
		String path = "";		
		if(result > 0) {
			
			path = "/WEB-INF/views/common/success.jsp";
			request.setAttribute("successCode", "withdrawMember");
			request.getSession().invalidate();
			
		} else {
			
			path = "/WEB-INF/views/common/failed.jsp";
			request.setAttribute("message", "회원탈퇴에 실패하셨습니다.");
			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
