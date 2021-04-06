package creation.board.model.dto;

import java.io.Serializable;
import java.sql.Date;

import com.greedy.jsp.member.model.dto.MemberDTO;

public class HPFAQBoardDTO implements Serializable {
	
	private static final long serialVersionUID = -1073479308684379783L;
	
	private int hpBdNo; 
	private String hpBdTitle;
	private String hpBdContent;
	private java.sql.Date hpBdDrawupDate;
	private int hpBdWatched;
	private String hpBdFile;
	private int hpMemNo;
	private MemberDTO writer;
	private String hpBdCategoryNo;
	
	public HPFAQBoardDTO() {}
	public HPFAQBoardDTO(int hpBdNo, String hpBdTitle, String hpBdContent, Date hpBdDrawupDate, int hpBdWatched,
			String hpBdFile, int hpMemNo, MemberDTO writer, String hpBdCategoryNo) {
		this.hpBdNo = hpBdNo;
		this.hpBdTitle = hpBdTitle;
		this.hpBdContent = hpBdContent;
		this.hpBdDrawupDate = hpBdDrawupDate;
		this.hpBdWatched = hpBdWatched;
		this.hpBdFile = hpBdFile;
		this.hpMemNo = hpMemNo;
		this.writer = writer;
		this.hpBdCategoryNo = hpBdCategoryNo;
	}
	
	public int getHpBdNo() {
		return hpBdNo;
	}
	public void setHpBdNo(int hpBdNo) {
		this.hpBdNo = hpBdNo;
	}
	public String getHpBdTitle() {
		return hpBdTitle;
	}
	public void setHpBdTitle(String hpBdTitle) {
		this.hpBdTitle = hpBdTitle;
	}
	public String getHpBdContent() {
		return hpBdContent;
	}
	public void setHpBdContent(String hpBdContent) {
		this.hpBdContent = hpBdContent;
	}
	public java.sql.Date getHpBdDrawupDate() {
		return hpBdDrawupDate;
	}
	public void setHpBdDrawupDate(java.sql.Date hpBdDrawupDate) {
		this.hpBdDrawupDate = hpBdDrawupDate;
	}
	public int getHpBdWatched() {
		return hpBdWatched;
	}
	public void setHpBdWatched(int hpBdWatched) {
		this.hpBdWatched = hpBdWatched;
	}
	public String getHpBdFile() {
		return hpBdFile;
	}
	public void setHpBdFile(String hpBdFile) {
		this.hpBdFile = hpBdFile;
	}
	public int getHpMemNo() {
		return hpMemNo;
	}
	public void setHpMemNo(int hpMemNo) {
		this.hpMemNo = hpMemNo;
	}
	public MemberDTO getWriter() {
		return writer;
	}
	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}
	public String getHpBdCategoryNo() {
		return hpBdCategoryNo;
	}
	public void setHpBdCategoryNo(String hpBdCategoryNo) {
		this.hpBdCategoryNo = hpBdCategoryNo;
	}
	
	@Override
	public String toString() {
		return "HPFAQBoardDTO [hpBdNo=" + hpBdNo + ", hpBdTitle=" + hpBdTitle + ", hpBdContent=" + hpBdContent
				+ ", hpBdDrawupDate=" + hpBdDrawupDate + ", hpBdWatched=" + hpBdWatched + ", hpBdFile=" + hpBdFile
				+ ", hpMemNo=" + hpMemNo + ", writer=" + writer + ", hpBdCategoryNo=" + hpBdCategoryNo + "]";
	}

}
