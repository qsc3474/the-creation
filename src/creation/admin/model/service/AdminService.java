package creation.admin.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;


import creation.admin.model.dao.AdminDAO;
import creation.book.hp.model.dto.HPbookDTO;



public class AdminService {
	
private final AdminDAO adminDAO;
	
	public AdminService() {
		
		adminDAO = new AdminDAO();
		
	}	
	

	public List<HPbookDTO> selectAllBookList() {

		Connection con =getConnection();
		
		List<HPbookDTO> bookList = null;
		
		bookList = adminDAO.allBookList(con);
		if(bookList !=null) {
			commit(con);
		}else {
			rollback(con);
		}
		close(con);
		return bookList;
		
	}

}
