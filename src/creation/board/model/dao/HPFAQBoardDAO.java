package creation.board.model.dao;

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

import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPFAQBoardDAO {
	
	private final Properties prop;
	
	public HPFAQBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/faq-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public List<HPBoardDTO> selectList(Connection con, PageInfoDTO pageInfo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		List<HPBoardDTO> HPFAQList = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartRow());
			pstmt.setInt(2, pageInfo.getEndRow());
			rset = pstmt.executeQuery();
			
			HPFAQList = new ArrayList<>();
			
			while(rset.next()) {
				
				HPBoardDTO boardDTO = new HPBoardDTO();
				boardDTO.setWriter(new MemberDTO());
				boardDTO.setNo(rset.getInt("HP_BD_NO"));
				boardDTO.setCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				boardDTO.setTitle(rset.getString("HP_BD_TITLE"));
				boardDTO.setContent(rset.getString("HP_BD_CONTENT"));
				boardDTO.setDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				boardDTO.setWatched(rset.getInt("HP_BD_WATCHED"));
				boardDTO.setCmtCount(rset.getInt("HP_BD_CMT_COUNT"));
				
				boardDTO.getWriter().setName(rset.getString("MEM_NAME"));
				
				boardDTO.setMemberNo(rset.getInt("HP_MEM_NO"));
				
				HPFAQList.add(boardDTO);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return HPFAQList;
		
	}

	public int selectTotalCount(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		
		int totalCount = 0;
		
		String query = prop.getProperty("selectTotalCount");
		
		try {
			
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				
				totalCount = rset.getInt(1);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(stmt);
			
		}
		
		return totalCount;
	}

	public int increamentBoardCount(Connection con, int no) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("increamentCount");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			pstmt.setInt(2, no);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

	public HPBoardDTO selectDetail(Connection con, int no) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectOneBoard");
		
		HPBoardDTO board = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, no);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				board = new HPBoardDTO();
				
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("HP_BD_NO"));
				board.setTitle(rset.getString("HP_BD_TITLE"));
				board.setContent(rset.getString("HP_BD_CONTENT"));
				board.setDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				board.setWatched(rset.getInt("HP_BD_WATCHED"));
				board.setMemberNo(rset.getInt("HP_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return board;
		
	}

	public int insertBoard(Connection con, HPBoardDTO insertBoard) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBoard");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, insertBoard.getCategoryNo());
			pstmt.setString(2, insertBoard.getTitle());
			pstmt.setString(3, insertBoard.getContent());
			pstmt.setInt(4, insertBoard.getWriter().getNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

	public int deleteBoard(Connection con, HPBoardDTO deleteBoard) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBoard");
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, deleteBoard.getNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(pstmt);
			
		}
		
		return result;
	}

	public int updateBoard(Connection con, HPBoardDTO updateBoard) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, updateBoard.getTitle());
			pstmt.setString(2, updateBoard.getContent());
			pstmt.setString(3, updateBoard.getCategoryNo());
			pstmt.setInt(4, updateBoard.getNo());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			
		}
		
		return result;
		
	}

}
