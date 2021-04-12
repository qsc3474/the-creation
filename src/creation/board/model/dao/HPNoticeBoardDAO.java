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

import creation.board.model.dto.CategoryDTO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPNoticeBoardDAO {
	private final Properties prop;
	
	public HPNoticeBoardDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "board/hp-ntc-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
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

	public List<HPBoardDTO> selectList(Connection con, PageInfoDTO pageInfo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectList");
		
		List<HPBoardDTO> HPNctList = null;
		
		try {
			
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pageInfo.getStartRow());
			pstmt.setInt(2, pageInfo.getEndRow());
			rset = pstmt.executeQuery();
			
			HPNctList = new ArrayList<>();
			
			while(rset.next()) {
				
				HPBoardDTO boardDTO = new HPBoardDTO();
				boardDTO.setWriter(new MemberDTO());
				boardDTO.setHpBdNo(rset.getInt("HP_BD_NO"));
				boardDTO.setHpBdTitle(rset.getString("HP_BD_TITLE"));
				boardDTO.setHpBdContent(rset.getString("HP_BD_CONTENT"));
				boardDTO.setHpBdDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				boardDTO.setHpBdWatched(rset.getInt("HP_BD_WATCHED"));
				
				boardDTO.getWriter().setName(rset.getString("MEM_NAME"));
				
				boardDTO.setHpBdFile(rset.getString("HP_BD_FILE"));
				boardDTO.setHpMemNo(rset.getInt("HP_MEM_NO"));
				boardDTO.setHpBdCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				
				HPNctList.add(boardDTO);
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
				return HPNctList;
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
				
				board.setHpBdNo(rset.getInt("HP_BD_NO"));
				board.setHpBdTitle(rset.getString("HP_BD_TITLE"));
				board.setHpBdContent(rset.getString("HP_BD_CONTENT"));
				board.setHpBdDrawupDate(rset.getDate("HP_BD_DRAWUP_DATE"));
				board.setHpBdWatched(rset.getInt("HP_BD_WATCHED"));
				board.setHpBdFile(rset.getString("HP_BD_FILE"));
				board.setHpMemNo(rset.getInt("HP_MEM_NO"));
				board.getWriter().setName(rset.getString("MEM_NAME"));
				board.setHpBdCategoryNo(rset.getString("HP_BD_CATEGORY_NO"));
				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		return board;
	}

	public int searchBoardCount(Connection con, String condition, String value) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = null;
		int boardCount = 0;
		
	
		 if(condition.equals("writer")) {
			
			query = prop.getProperty("searchWriterBoardCount");
		} else if(condition.equals("title")) {
			
			query = prop.getProperty("searchTitleBoardCount");
		} else if(condition.equals("content")) {
			
			query = prop.getProperty("searchBodyBoardCount");
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				boardCount = rset.getInt("COUNT(*)");
			}
				
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return boardCount;
	}

	public List<HPBoardDTO> searchBoardList(Connection con, PageInfoDTO pageInfo, String condition, String value) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = null;
		List<HPBoardDTO> boardList = null;
		
		if(condition.equals("category")) {
			
			query = prop.getProperty("searchCategoryBoard");
		} else if(condition.equals("writer")) {
			
			query = prop.getProperty("searchWriterBoard");
		} else if(condition.equals("title")) {
			
			query = prop.getProperty("searchTitleBoard");
		} else if(condition.equals("content")) {
			
			query = prop.getProperty("searchBodyBoard");
		}
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, value);
			pstmt.setInt(2, pageInfo.getStartRow());
			pstmt.setInt(3, pageInfo.getEndRow());
			
			rset = pstmt.executeQuery();
			
			boardList = new ArrayList<>();
			
			while(rset.next()) {
				HPBoardDTO board = new HPBoardDTO();
				board.setCategory(new CategoryDTO());
				board.setWriter(new MemberDTO());
				
				board.setNo(rset.getInt("BOARD_NO"));
				board.setCategoryCode(rset.getInt("CATEGORY_CODE"));
				board.getCategory().setName(rset.getString("CATEGORY_NAME"));
				board.setTitle(rset.getString("BOARD_TITLE"));
				board.setBody(rset.getString("BOARD_BODY"));
				board.setWriterMemberNo(rset.getInt("BOARD_WRITER_MEMBER_NO"));
				board.getWriter().setNickname(rset.getString("NICKNAME"));
				board.setCount(rset.getInt("BOARD_COUNT"));
				board.setCreateDate(rset.getDate("CREATED_DATE"));
				board.setStatus(rset.getString("BOARD_STATUS"));
				
				boardList.add(board);				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return boardList;
	}
}
