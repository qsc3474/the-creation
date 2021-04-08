package creation.board.model.service;

import creation.board.model.dao.HPNoticeBoardDAO;

public class HPNoticeBoardService {
private final HPNoticeBoardDAO boardDAO;
	
	public HPNoticeBoardService() {
		
		boardDAO = new HPNoticeBoardDAO();
		
	}
}
