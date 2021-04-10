package creation.member.model.service;


import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import creation.member.model.dao.MemberDAO;
import creation.member.model.dto.MemberDTO;

public class MemberService {

private final MemberDAO memberDAO;
	
	public MemberService() {
		memberDAO = new MemberDAO();
	}

	public MemberDTO loginCheck(MemberDTO requestMember) {
		Connection con = getConnection();
		MemberDTO loginMember = null;
		
		String encPwd = memberDAO.selectEncryptedPwd(con, requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		/* 로그인 요청한 원문 비밀번호와 저장되어 있는 암호화 된 비밀번호가 일치하는지 확인한다. */
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
//			System.out.println("기존 회원과 비번 일치!");
			/* 비밀번호가 일치하는 경우에만 회원 정보를 조회해 온다. */
			loginMember = memberDAO.selectLoginMember(con, requestMember);
		}
		
		close(con);
		
		return loginMember;
	}


}
