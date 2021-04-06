package creation.pet.model.dto;

import java.io.Serializable;

public class PetDTO implements Serializable{

	private static final long serialVersionUID = 4532654868568354464L;
	
	private String petCode;
	private String petGender;
	private String petName;
	private int petAge;
	private int petWeight;
	private String petColor;
	private String petKind;
	private String petNeutralization;
	private String petSpeciality;
	private int memNo;
	
	public PetDTO() {}
	public PetDTO(String petCode, String petGender, String petName, int petAge, int petWeight, String petColor,
			String petKind, String petNeutralization, String petSpeciality, int memNo) {
		this.petCode = petCode;
		this.petGender = petGender;
		this.petName = petName;
		this.petAge = petAge;
		this.petWeight = petWeight;
		this.petColor = petColor;
		this.petKind = petKind;
		this.petNeutralization = petNeutralization;
		this.petSpeciality = petSpeciality;
		this.memNo = memNo;
	}
	
	public String getPetCode() {
		return petCode;
	}
	public void setPetCode(String petCode) {
		this.petCode = petCode;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public int getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetColor() {
		return petColor;
	}
	public void setPetColor(String petColor) {
		this.petColor = petColor;
	}
	public String getPetKind() {
		return petKind;
	}
	public void setPetKind(String petKind) {
		this.petKind = petKind;
	}
	public String getPetNeutralization() {
		return petNeutralization;
	}
	public void setPetNeutralization(String petNeutralization) {
		this.petNeutralization = petNeutralization;
	}
	public String getPetSpeciality() {
		return petSpeciality;
	}
	public void setPetSpeciality(String petSpeciality) {
		this.petSpeciality = petSpeciality;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	
	@Override
	public String toString() {
		return "PetDTO [petCode=" + petCode + ", petGender=" + petGender + ", petName=" + petName + ", petAge=" + petAge
				+ ", petWeight=" + petWeight + ", petColor=" + petColor + ", petKind=" + petKind
				+ ", petNeutralization=" + petNeutralization + ", petSpeciality=" + petSpeciality + ", memNo=" + memNo
				+ "]";
	}
	
}
