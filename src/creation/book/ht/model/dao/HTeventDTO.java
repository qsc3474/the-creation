package creation.book.ht.model.dao;

import java.io.Serializable;
import java.util.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HTeventDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6557798431426760029L;
	private int no;
	private String type;
	private java.util.Date time;
	private PetDTO petCode;
	private String status;
	private MemberDTO memNo;
	
	public HTeventDTO() {
		
	}

	public HTeventDTO(int no, String type, Date time, PetDTO petCode, String status, MemberDTO memNo) {
		super();
		this.no = no;
		this.type = type;
		this.time = time;
		this.petCode = petCode;
		this.status = status;
		this.memNo = memNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public java.util.Date getTime() {
		return time;
	}

	public void setTime(java.util.Date time) {
		this.time = time;
	}

	public PetDTO getPetCode() {
		return petCode;
	}

	public void setPetCode(PetDTO petCode) {
		this.petCode = petCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public MemberDTO getMemNo() {
		return memNo;
	}

	public void setMemNo(MemberDTO memNo) {
		this.memNo = memNo;
	}

	@Override
	public String toString() {
		return "HTeventDTO [no=" + no + ", type=" + type + ", time=" + time + ", petCode=" + petCode + ", status="
				+ status + ", memNo=" + memNo + "]";
	}

	

}
