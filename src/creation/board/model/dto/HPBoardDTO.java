package creation.board.model.dto;

import java.io.Serializable;
import java.sql.Date;

import creation.member.model.dto.MemberDTO;

public class HPBoardDTO implements Serializable {
	
	private static final long serialVersionUID = -1073479308684379783L;

	private int no;
	private String categoryNo;
	private CategoryDTO category;
	private String title;
	private String content;
	private java.util.Date drawupDate ;
	private int watched;
	private String file;
	private int memberNo ;
	private MemberDTO writer ;	
	private String status;
	private int cmtCount;
	
	public HPBoardDTO() {
		
	}

	public HPBoardDTO(int no, String categoryNo, CategoryDTO category, String title, String content,
			java.util.Date drawupDate, int watched, String file, int memberNo, MemberDTO writer, String status,
			int cmtCount) {
		super();
		this.no = no;
		this.categoryNo = categoryNo;
		this.category = category;
		this.title = title;
		this.content = content;
		this.drawupDate = drawupDate;
		this.watched = watched;
		this.file = file;
		this.memberNo = memberNo;
		this.writer = writer;
		this.status = status;
		this.cmtCount = cmtCount;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
	}

	public CategoryDTO getCategory() {
		return category;
	}

	public void setCategory(CategoryDTO category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public java.util.Date getDrawupDate() {
		return drawupDate;
	}

	public void setDrawupDate(java.util.Date drawupDate) {
		this.drawupDate = drawupDate;
	}

	public int getWatched() {
		return watched;
	}

	public void setWatched(int watched) {
		this.watched = watched;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}

	public MemberDTO getWriter() {
		return writer;
	}

	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getCmtCount() {
		return cmtCount;
	}

	public void setCmtCount(int cmtCount) {
		this.cmtCount = cmtCount;
	}

	@Override
	public String toString() {
		return "HPBoardDTO [no=" + no + ", categoryNo=" + categoryNo + ", category=" + category + ", title=" + title
				+ ", content=" + content + ", drawupDate=" + drawupDate + ", watched=" + watched + ", file=" + file
				+ ", memberNo=" + memberNo + ", writer=" + writer + ", status=" + status + ", cmtCount=" + cmtCount
				+ "]";
	}

	
}
