package creation.book.ht.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;

import creation.book.ht.model.dao.HTeventDTO;
import creation.book.ht.model.dto.HTeventDAO;


public class HTevnetService {
	
	private final HTeventDAO hteventeDAO;
	
	public HTevnetService() {
		
		hteventeDAO = new HTeventDAO();
	}

	public int insertEvent(HTeventDTO newEvent) {
		
		Connection con = getConnection();
		
		int result = hteventeDAO.insertEvent(con, newEvent);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}

}
