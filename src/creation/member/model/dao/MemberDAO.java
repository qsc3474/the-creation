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
			pstmt.setString(1, requestMember.getId());
			
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
			pstmt.setString(1, requestMember.getId());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				loginMember = new MemberDTO();
				loginMember.setNo(rset.getInt("MEM_NO"));
				loginMember.setId(rset.getString("MEM_ID"));
				loginMember.setName(rset.getString("MEM_NAME"));
				loginMember.setPhone(rset.getInt("MEM_PHONE"));
				loginMember.setEmail(rset.getString("MEM_EMAIL"));
				loginMember.setAddress(rset.getString("MEM_ADDRESS"));
				loginMember.setBirthday(rset.getDate("MEM_BIRTH"));
				loginMember.setStatus(rset.getString("MEM_STATUS"));
				loginMember.setKind(rset.getString("MEM_KIND"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return loginMember;
	}

	public int registMember(Connection con, MemberDTO requestMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("registMember");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getName());
			pstmt.setInt(2, requestMember.getPhone());
			pstmt.setString(3, requestMember.getAddress());
			pstmt.setString(4, requestMember.getEmail());
			pstmt.setString(5, requestMember.getId());
			pstmt.setString(6, requestMember.getPwd());
			pstmt.setDate(7, requestMember.getBirthday());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}
}