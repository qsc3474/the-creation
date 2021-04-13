package creation.book.hp.model.dto;

import java.io.Serializable;
import java.sql.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HPbookDTO implements Serializable {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 243283460826953321L;
	private int no;
	private String subjectCode;
	private String clinicCode;
	private PetDTO petCode;
	private java.sql.Date time;
	private MemberDTO memberNo;
	private String status;
	
	public HPbookDTO() {}

	public HPbookDTO(int no, String subjectCode, String clinicCode, PetDTO petCode, Date time, MemberDTO memberNo,
			String status) {
		super();
		this.no = no;
		this.subjectCode = subjectCode;
		this.clinicCode = clinicCode;
		this.petCode = petCode;
		this.time = time;
		this.memberNo = memberNo;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSubjectCode() {
		return subjectCode;
	}

	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}

	public String getClinicCode() {
		return clinicCode;
	}

	public void setClinicCode(String clinicCode) {
		this.clinicCode = clinicCode;
	}

	public PetDTO getPetCode() {
		return petCode;
	}

	public void setPetCode(PetDTO petCode) {
		this.petCode = petCode;
	}

	public java.sql.Date getTime() {
		return time;
	}

	public void setTime(java.sql.Date time) {
		this.time = time;
	}

	public MemberDTO getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(MemberDTO memberNo) {
		this.memberNo = memberNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "HPbookDTO [no=" + no + ", subjectCode=" + subjectCode + ", clinicCode=" + clinicCode + ", petCode="
				+ petCode + ", time=" + time + ", memberNo=" + memberNo + ", status=" + status + "]";
	}

	
	
}
