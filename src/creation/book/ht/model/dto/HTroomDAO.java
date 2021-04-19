package creation.book.ht.model.dto;

import static creation.common.jdbc.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
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
	/* 호텔 룸 예약 인서트 메소드 */
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
	/* 호텔 룸 예약확인 셀렉트 메소드*/
	public List<HTroomDTO> selectRoomList(Connection con, int roomMember) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		List<HTroomDTO> roomList = null;
		
		String query = prop.getProperty("roomList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, roomMember);
			
			rset = pstmt.executeQuery();
			
			roomList = new ArrayList<>();
			while(rset.next()) {
				HTroomDTO room = new HTroomDTO();
				room.setMemNo(roomMember);
				
				room.setNo(rset.getInt("HT_ROOM_BK_NO"));
				room.setType(rset.getString("HT_SERVICE_TYPE"));
				room.setRoomNo(rset.getString("ROOM_TYPE"));
				room.setPetName(rset.getString("HT_PET_NAME"));
				room.setCheckIn(rset.getString("HT_CHECK_IN_TIME"));
				room.setCheckOut(rset.getString("HT_CHECK_OUT_TIME"));
			
				roomList.add(room);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return roomList;
	}

}
