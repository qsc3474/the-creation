package creation.book.ht.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import creation.book.ht.model.dao.HTroomDTO;
import creation.book.ht.model.dto.HTroomDAO;




public class HTroomService {
	
	private final HTroomDAO htRoomDAO;
	
	public HTroomService() {
		
		htRoomDAO = new HTroomDAO();
	}

	public int insertRoom(HTroomDTO newRoom) {
		
		Connection con = getConnection();
		
		int result = htRoomDAO.insertRoom(con, newRoom);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}

}
