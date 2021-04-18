package creation.book.hp.model.dao;

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
import creation.book.hp.model.dto.HPbookDTO;
import creation.common.config.ConfigLocation;
import creation.member.model.dto.MemberDTO;

public class HPbookDAO {
	private final Properties prop;

public HPbookDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "book/hp-book-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertBook(Connection con, HPbookDTO newBook) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertBook");
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, newBook.getTime());
			pstmt.setInt(2, newBook.getMemberNo());
			pstmt.setString(3, newBook.getPetName());
			pstmt.setString(4, newBook.getPetKind());
			pstmt.setString(5, newBook.getPetGender());
			pstmt.setString(6, newBook.getPetAge());
			pstmt.setString(7, newBook.getPetNeut());
			pstmt.setString(8, newBook.getMessage());
			
			result=pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

	public List<HPbookDTO> selectBook(Connection con, HPbookDTO book) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("checkBook");
		
		List<HPbookDTO> HPBookList = null;
		
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, book.getMemberNo());
			rset= pstmt.executeQuery();
			
			HPBookList = new ArrayList<>();
			
			
			while(rset.next()) {
				HPbookDTO bookDTO= new HPbookDTO();
				bookDTO.setNo(rset.getInt("HP_BK_NO"));
				bookDTO.setTime(rset.getString("HP_BK_TIME"));
				bookDTO.setStatus(rset.getString("HP_BK_STATUS"));
				bookDTO.setPetName(rset.getString("HP_PET_NAME"));
				bookDTO.setPetKind(rset.getString("HP_PET_KIND"));
				bookDTO.setPetGender(rset.getString("HP_PET_GENDER"));
				bookDTO.setPetAge(rset.getString("HP_PET_AGE"));
				bookDTO.setPetNeut(rset.getString("HP_PET_NEUT"));
				bookDTO.setMessage(rset.getString("HP_BK_MESSAGE"));

				HPBookList.add(bookDTO);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			close(rset);
			close(pstmt);
			
		}
		
		
		return HPBookList;
	}

	
	}

	




