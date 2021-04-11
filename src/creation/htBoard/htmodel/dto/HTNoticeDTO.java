package creation.htBoard.htmodel.dto;

import java.io.Serializable;
import java.sql.Date;

import creation.member.model.dto.MemberDTO;

public class HTNoticeDTO implements Serializable{

	private static final long serialVersionUID = -7923081726568083592L;
	
	private int no;
	private String title;
	private String content;
	private java.sql.Date drawupDate;
	private int watched;
	private String file;
	private int memNo;
	private MemberDTO writer;
	private String categoryNo;
	private String status;
	private int cmtCount;

	
	public HTNoticeDTO() {
		
	}


	public HTNoticeDTO(int no, String title, String content, Date drawupDate, int watched, String file, int memNo,
			MemberDTO writer, String categoryNo, String status, int cmtCount) {
		this.no = no;
		this.title = title;
		this.content = content;
		this.drawupDate = drawupDate;
		this.watched = watched;
		this.file = file;
		this.memNo = memNo;
		this.writer = writer;
		this.categoryNo = categoryNo;
		this.status = status;
		this.cmtCount = cmtCount;
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
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


	public java.sql.Date getDrawupDate() {
		return drawupDate;
	}


	public void setDrawupDate(java.sql.Date drawupDate) {
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


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public MemberDTO getWriter() {
		return writer;
	}


	public void setWriter(MemberDTO writer) {
		this.writer = writer;
	}


	public String getCategoryNo() {
		return categoryNo;
	}


	public void setCategoryNo(String categoryNo) {
		this.categoryNo = categoryNo;
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


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "HTNoticeDTO [no=" + no + ", title=" + title + ", content=" + content + ", drawupDate=" + drawupDate
				+ ", watched=" + watched + ", file=" + file + ", memNo=" + memNo + ", writer=" + writer
				+ ", categoryNo=" + categoryNo + ", status=" + status + ", cmtCount=" + cmtCount + "]";
	}
	
	
	
	
	
	
}
