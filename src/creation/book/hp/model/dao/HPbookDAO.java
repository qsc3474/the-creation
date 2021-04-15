package creation.book.hp.model.dao;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import creation.book.hp.model.dto.HPbookDTO;
import creation.common.config.ConfigLocation;

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

	public int insertBoard(Connection con, HPbookDTO newBook) {
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

}
