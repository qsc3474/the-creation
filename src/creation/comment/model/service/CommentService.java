package creation.comment.model.service;

import static creation.common.jdbc.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import creation.comment.model.dao.CommentDAO;
import creation.comment.model.dto.CommentDTO;

public class CommentService {

	private final CommentDAO commentDAO;
	
	public CommentService() {
		
		commentDAO = new CommentDAO();
		
	}

	public List<CommentDTO> selectList(String refBoard) {
		
		Connection con = getConnection();
		
		List<CommentDTO> commentList = commentDAO.selectList(con, refBoard);
		
		return commentList;
		
	}
	
}
