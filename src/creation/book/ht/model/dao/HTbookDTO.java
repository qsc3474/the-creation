package creation.book.ht.model.dao;

import java.io.Serializable;
import java.util.Date;

import creation.member.model.dto.MemberDTO;
import creation.pet.model.dto.PetDTO;

public class HTbookDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7178195182017594404L;
	private int no;
	private String type;
	private int roomNo;
	private PetDTO petCode;
	private java.util.Date checkIn;
	private java.util.Date checkOut;
	private String status;
	private MemberDTO memNo;
	
	
	public HTbookDTO() {
		
	}


	public HTbookDTO(int no, String type, int roomNo, PetDTO petCode, Date checkIn, Date checkOut, String status,
			MemberDTO memNo) {
		super();
		this.no = no;
		this.type = type;
		this.roomNo = roomNo;
		this.petCode = petCode;
		this.checkIn = checkIn;
		this.checkOut = checkOut;
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


	public int getRoomNo() {
		return roomNo;
	}


	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}


	public PetDTO getPetCode() {
		return petCode;
	}


	public void setPetCode(PetDTO petCode) {
		this.petCode = petCode;
	}


	public java.util.Date getCheckIn() {
		return checkIn;
	}


	public void setCheckIn(java.util.Date checkIn) {
		this.checkIn = checkIn;
	}


	public java.util.Date getCheckOut() {
		return checkOut;
	}


	public void setCheckOut(java.util.Date checkOut) {
		this.checkOut = checkOut;
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
		return "HPbookDTO [no=" + no + ", type=" + type + ", roomNo=" + roomNo + ", petCode=" + petCode + ", checkIn="
				+ checkIn + ", checkOut=" + checkOut + ", status=" + status + ", memNo=" + memNo + "]";
	}



}
