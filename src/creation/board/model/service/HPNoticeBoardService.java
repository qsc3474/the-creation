package creation.board.model.service;




import static creation.common.jdbc.JDBCTemplate.close;
import static creation.common.jdbc.JDBCTemplate.commit;
import static creation.common.jdbc.JDBCTemplate.getConnection;
import static creation.common.jdbc.JDBCTemplate.rollback;
import java.sql.Connection;
import java.util.List;

import creation.board.model.dao.HPFAQBoardDAO;
import creation.board.model.dao.HPNoticeBoardDAO;
import creation.board.model.dto.FileDTO;
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

	public int searchBoardCount(String condition, String value) {

		Connection con = getConnection();
		
		int totalCount = hpNctBoardDAO.searchBoardCount(con, condition, value);
		
		close(con);
		
		return totalCount;
	}

	public List<HPBoardDTO> searchBoardList(PageInfoDTO pageInfo, String condition, String value) {
		Connection con = getConnection();
		
		List<HPBoardDTO> HPNCTList = hpNctBoardDAO.searchBoardList(con, pageInfo, condition, value);
		
		close(con);
		
		return HPNCTList;
	}

	public int deleteBoard(HPBoardDTO deleteBoard) {
		Connection con =getConnection();
		
		int result = hpNctBoardDAO.deleteBoard(con, deleteBoard);
		
		if(result > 0) {
			
			commit(con);
			
		} else {
			
			rollback(con);
			
		}
		
		close(con);
		
		return result;
		
		
	
	}

	public int insertThumbnail(HPBoardDTO thumbnail) {
		Connection con = getConnection();
		
		/* ??????????????? ?????? ??? result ?????? */
		int result = 0;
		
		/* ?????? board ??????????????? thumbnail ???????????? insert ????????? ??????. */
		int boardResult = hpNctBoardDAO.insertThumbnailContent(con, thumbnail);
		
		/* ?????? ????????? ????????? ??????(sequence??? ?????? ????????? ??????)??? ????????? ?????? */
		int boardNo = hpNctBoardDAO.selectThumbnailSequence(con);
		
		/* Attachment List??? ????????????. */
		List<FileDTO> fileList = thumbnail.getFileList();
		
		/* ????????? AttachmentDTO(?????? ??????)?????? boardNo??? ?????????. */
		for(int i = 0 ; i < fileList.size() ; i++) {
			fileList.get(i).setBdNo(boardNo);
		}
		
		/* Attachment ???????????? list size()?????? insert??????. */
		int attachmentResult = 0;
		for(int i = 0 ; i < fileList.size() ; i++) {
			attachmentResult += hpNctBoardDAO.insertFile(con, fileList.get(i));
		}
		
		/* ?????? ??????(????????? ????????????)??? ???????????? ???????????? ????????? ????????????. */
		if(boardResult > 0 && attachmentResult == fileList.size()) {
			commit(con);
			result = 1;
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

	public int insertFileBoard(HPBoardDTO noticeBoard) {
		
		Connection con = getConnection();
		
		/* ??????????????? ?????? ??? result ?????? */
		int result = 0;
		
		int boardResult = hpNctBoardDAO.insertFileBoard(con, noticeBoard);
		
		System.out.println(boardResult);
		
		int boardNo = hpNctBoardDAO.selectFileBoardSequence(con);
		
		System.out.println(boardNo);
		
		/* Attachment List??? ????????????. */
		List<FileDTO> fileList = noticeBoard.getFileList();
		
		/* ????????? AttachmentDTO(?????? ??????)?????? boardNo??? ?????????. */
		for(int i = 0 ; i < fileList.size() ; i++) {
			
			fileList.get(i).setBdNo(boardNo);
			
		}
		
		int fileResult = 0;
		
		for(int i = 0 ; i < fileList.size() ; i++) {
			
			fileResult += hpNctBoardDAO.insertFile(con, fileList.get(i));
			
		}
		
		System.out.println(fileResult);
		
		if(boardResult > 0 && fileResult == fileList.size()) {
			
			commit(con);
			result = 1;
			
		} else {
			
			rollback(con);
			
		}
		
		return result;
	}
}
