package creation.book.ht.model.dto;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import creation.book.ht.model.dao.HTroomDTO;
import creation.common.config.ConfigLocation;

public class HTroomDAO {
	
private final Properties prop;
	
	public HTroomDAO() {
		
		prop = new Properties();
		
		try {
			
			prop.loadFromXML(new FileInputStream(ConfigLocation.MAPPER_LOCATION + "book/htRoom-mapper.xml"));
			
		} catch (IOException e) {
			
			e.printStackTrace();
			
		}
		
	}

	public int insertRoom(Connection con, HTroomDTO newRoom) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("roomEvent");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, newRoom.getType());
			pstmt.setString(2, newRoom.getRoomNo());
			pstmt.setString(3, newRoom.getCheckIn());
			pstmt.setString(4, newRoom.getCheckOut());
			pstmt.setInt(5, newRoom.getMemNo());
			pstmt.setString(6, newRoom.getPetNo());
			pstmt.setString(7, newRoom.getPetName());
			pstmt.setString(8, newRoom.getPetKind());
			pstmt.setString(9, newRoom.getPetGender());
			pstmt.setString(10, newRoom.getPetAge());
			pstmt.setString(11, newRoom.getPetNeut());
			pstmt.setString(12, newRoom.getMessage());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

}
