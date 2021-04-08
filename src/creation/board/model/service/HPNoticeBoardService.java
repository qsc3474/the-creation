package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPNoticeBoardDAO;
import creation.board.model.dto.HPBoardDTO;
import creation.board.model.dto.PageInfoDTO;

public class HPNoticeBoardService {
private final HPNoticeBoardDAO hpNctBoardDAO;
	
	public HPNoticeBoardService() {
		
		hpNctBoardDAO = new HPNoticeBoardDAO();
		
	}

	public int selectTotalCount() {
		Connection con = getConnection();
		
		int totalCount = hpNctBoardDAO.selectTotalCount(con);
		
		close(con);
		return totalCount;
	}

	public List<HPBoardDTO> selectList(PageInfoDTO pageInfo) {
		Connection con = getConnection();
		
		List<HPBoardDTO> HPFAQList = hpNctBoardDAO.selectList(con, pageInfo);
		
		close(con);
		return HPFAQList;
	}
}
