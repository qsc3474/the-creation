package creation.board.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

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
		
		List<HPBoardDTO> HPNCTList = hpNctBoardDAO.selectList(con, pageInfo);
		
		close(con);
		return HPNCTList;
	}

	public HPBoardDTO selectDetail(int no) {
	Connection con = getConnection();
		
		int result = hpNctBoardDAO.increamentBoardCount(con, no);
		
		HPBoardDTO board = null;
		
		if(result > 0) {
			
			board = hpNctBoardDAO.selectDetail(con, no);
			
			if(board != null) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return board;
		
	}
}
