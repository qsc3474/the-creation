package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPFAQBoardDAO;
import creation.board.model.dto.HPBoardDTO;

public class HPFAQBoardService {

	private final HPFAQBoardDAO boardDAO;
	
	public HPFAQBoardService() {
		
		boardDAO = new HPFAQBoardDAO();
		
	}
	
	public List<HPBoardDTO> selectList() {
		
		Connection con = getConnection();
		
		List<HPBoardDTO> HPFAQList = boardDAO.selectList(con);
		
		close(con);
		
		return HPFAQList;
		
	}

}
