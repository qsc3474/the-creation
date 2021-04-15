package creation.comment.model.service;

import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;

import creation.comment.model.dao.CommentDAO;
import creation.comment.model.dto.CommentDTO;
import creation.member.model.dto.MemberDTO;

public class CommentService {

	private final CommentDAO commentDAO;
	
	public CommentService() {
		
		commentDAO = new CommentDAO();
		
	}

	public List<CommentDTO> selectList(String refBoard) {
		
		Connection con = getConnection();
		
		List<CommentDTO> commentList = commentDAO.selectList(con, refBoard);
		
		close(con);
		
		return commentList;
		
	}

	public CommentDTO insertComment(CommentDTO insertComment) {
		
		Connection con = getConnection();
		
		CommentDTO comment = null;
		
		int result = commentDAO.insertComment(con, insertComment);
		
		if(result > 0) {
			
			int seqNo = commentDAO.selectCurrSeqNo(con);
			
			int incrementCommentCount = commentDAO.incrementCommentCount(con, insertComment);
			System.out.println(incrementCommentCount);
			
			comment = commentDAO.selectOneComment(con, seqNo);
			
			if(comment != null && incrementCommentCount > 0) {
				
				commit(con);
				
			} else {
				
				rollback(con);
				
			}
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return comment;
		
	}
	
}
