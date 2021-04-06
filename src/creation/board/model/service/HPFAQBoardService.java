package creation.board.model.service;

import static com.greedy.jsp.common.jdbc.JDBCTemplate.close;
import static com.greedy.jsp.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPFAQBoardDAO;
import creation.board.model.dto.HPFAQBoardDTO;

public class HPFAQBoardService {

	private final HPFAQBoardDAO boardDAO;
	
	public HPFAQBoardService() {
		
		boardDAO = new HPFAQBoardDAO();
		
	}
	
	public List<HPFAQBoardDTO> selectList() {
		
		Connection con = getConnection();
		
		List<HPFAQBoardDTO> HPFAQList = boardDAO.selectList(con);
		
		close(con);
		
		return HPFAQList;
		
	}

}
