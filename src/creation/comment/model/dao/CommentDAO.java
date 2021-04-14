package creation.comment.model.dao;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import creation.comment.model.dto.CommentDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class CommentDAO {

	private final Properties prop;
	
	public CommentDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "comment/cmt-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public List<CommentDTO> selectList(Connection con, String refBoard) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<CommentDTO> commentList = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, refBoard);
			
			rset = pstmt.executeQuery();
			
			commentList = new ArrayList<>();
			
			while(rset.next()) {
				
				CommentDTO comment = new CommentDTO();
				comment.setWriter(new MemberDTO());
				
				comment.setNo(rset.getInt("HP_CMT_NO"));
				comment.setContent(rset.getString("HP_CMT_CONTENT"));
				comment.setMemNo(rset.getInt("HP_CMT_MEM_NO"));
				comment.setRefBoardNo(rset.getString("HP_REF_BOARD_NO"));
				comment.setParentCmtNo(rset.getInt("HP_PARENT_CMT_NO"));
				comment.setWriteTime(rset.getDate("HP_WRITE_TIME"));
				comment.getWriter().setName(rset.getString("MEM_NAME"));
				
				commentList.add(comment);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return commentList;
		
	}

	public int insertComment(Connection con, CommentDTO insertComment) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertComment");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, insertComment.getContent());
			pstmt.setInt(2, insertComment.getMemNo());
			pstmt.setString(3, insertComment.getRefBoardNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

	public CommentDTO selectOneComment(Connection con, int seqNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectOneComment");
		
		CommentDTO comment = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, seqNo);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				comment = new CommentDTO();
				comment.setWriter(new MemberDTO());
				
				comment.setNo(rset.getInt("HP_CMT_NO"));
				comment.setContent(rset.getString("HP_CMT_CONTENT"));
				comment.setMemNo(rset.getInt("HP_CMT_MEM_NO"));
				comment.setRefBoardNo(rset.getString("HP_REF_BOARD_NO"));
				comment.setParentCmtNo(rset.getInt("HP_PARENT_CMT_NO"));
				comment.setWriteTime(rset.getDate("HP_WRITE_TIME"));
				comment.getWriter().setName(rset.getString("MEM_NAME"));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return comment;
		
	}

	public int selectCurrSeqNo(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		
		int result = 0;
		
		String query = prop.getProperty("selectCurrSeqNo");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				
				result = rset.getInt(1);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return result;
		
	}
	
	
	
}
