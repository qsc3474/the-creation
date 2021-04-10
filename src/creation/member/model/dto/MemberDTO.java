package creation.member.model.dto;

import java.io.Serializable;
import java.sql.Date;

/**
 * @author joon
 *
 */
public class MemberDTO implements Serializable{
      
      /**
    * 
    */
   private static final long serialVersionUID = 1L;
      private int memNo;
      private String memName;
      private String phone;
      private String address;
      private String email;
      private String memId;
      private String memPwd;
      private java.sql.Date memBirth;
      private String memKind;
      private String status;
      
      
      public MemberDTO() {
         
      }


	public MemberDTO(int memNo, String memName, String phone, String address, String email, String memId, String memPwd,
			Date memBirth, String memKind, String status) {
		super();
		this.memNo = memNo;
		this.memName = memName;
		this.phone = phone;
		this.address = address;
		this.email = email;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memBirth = memBirth;
		this.memKind = memKind;
		this.status = status;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPwd() {
		return memPwd;
	}


	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}


	public java.sql.Date getMemBirth() {
		return memBirth;
	}


	public void setMemBirth(java.sql.Date memBirth) {
		this.memBirth = memBirth;
	}


	public String getMemKind() {
		return memKind;
	}


	public void setMemKind(String memKind) {
		this.memKind = memKind;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memName=" + memName + ", phone=" + phone + ", address=" + address
				+ ", email=" + email + ", memId=" + memId + ", memPwd=" + memPwd + ", memBirth=" + memBirth
				+ ", memKind=" + memKind + ", status=" + status + "]";
	}


    
}