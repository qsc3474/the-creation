package creation.book.hp.model.service;


import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;


import creation.book.hp.model.dao.HPbookDAO;
import creation.book.hp.model.dto.HPbookDTO;

public class HPbookService {

private final HPbookDAO bookDAO;
	
	public HPbookService() {
		
		bookDAO = new HPbookDAO();
		
	}

	public int insertBook(HPbookDTO newBook) {
		Connection con = getConnection();
		
		int result = bookDAO.insertBook(con, newBook);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
	}

	public List<HPbookDTO> selectBook(HPbookDTO book) {
		Connection con = getConnection();
		
		List<HPbookDTO> HPBookList = bookDAO.selectBook(con, book);
		
		
		
		close(con);
		
		return HPBookList;	



	
	}

}