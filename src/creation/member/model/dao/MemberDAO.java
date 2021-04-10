package creation.member.model.dao;


import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;



public class MemberDAO {
	
	private final Properties prop;
	
	public MemberDAO() {
	
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "member/member-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public String selectEncryptedPwd(Connection con, MemberDTO requestMember) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String encPwd = null;
		
		String query = prop.getProperty("selectEncryptedPwd");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				encPwd = rset.getString("MEM_PWD");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return encPwd;
	}

	public MemberDTO selectLoginMember(Connection con, MemberDTO requestMember) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		MemberDTO loginMember = null;
		
		String query = prop.getProperty("selectLoginMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getMemId());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginMember = new MemberDTO();
				loginMember.setMemNo(rset.getInt("MEM_NO"));
				loginMember.setMemId(rset.getString("MEM_ID"));
				loginMember.setMemName(rset.getString("MEM_NAME"));
				loginMember.setPhone(rset.getString("MEM_PHONE"));
				loginMember.setEmail(rset.getString("MEM_EMAIL"));
				loginMember.setAddress(rset.getString("MEM_ADDRESS"));
				loginMember.setMemBirth(rset.getDate("MEM_BIRTH"));
				loginMember.setMemKind(rset.getString("MEM_KIND"));
				loginMember.setStatus(rset.getString("MEMBER_STATUS"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginMember;
	}
}