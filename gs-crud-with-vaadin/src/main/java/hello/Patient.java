package hello;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.apache.tomcat.util.bcel.classfile.Constant;

@Entity
public class Patient {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer patient_id;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	private String dob;
	private String gender;
	private String insurance;
	private String race;
	private String refill;
	private String physican_name;
	private String allergy;
	private String address;
	private String zipcode;
	
	@OneToMany(cascade=CascadeType.ALL,orphanRemoval = true)
	@JoinColumn(name = "patient_id")
	private List<PatientHistory> patientHistory = new ArrayList<>();
	
	protected Patient() {
	}


	public List<PatientHistory> getPatientHistory() {
		return patientHistory;
	}


	public void setPatientHistory(List<PatientHistory> patientHistory) {
		this.patientHistory = patientHistory;
	}


	public Integer getPatient_id() {
		return patient_id;
	}


	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getInsurance() {
		return insurance;
	}


	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}


	public String getRace() {
		return race;
	}


	public void setRace(String race) {
		this.race = race;
	}


	public String getRefill() {
		return refill;
	}


	public void setRefill(String refill) {
		this.refill = refill;
	}


	public String getPhysican_name() {
		return physican_name;
	}


	public void setPhysican_name(String physican_name) {
		this.physican_name = physican_name;
	}


	public String getAllergy() {
		return allergy;
	}


	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public Patient(Integer patient_id, String first_name, String lastName, String dob, String gender, String insurance,
			String race, String refill, String physican_name, String allergy, String address, String zipcode) {
		super();
		this.patient_id = patient_id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.insurance = insurance;
		this.race = race;
		this.refill = refill;
		this.physican_name = physican_name;
		this.allergy = allergy;
		this.address = address;
		this.zipcode = zipcode;
	}


	@Override
	public String toString() {
		return "Patient [patient_id=" + patient_id + ", first_name=" + firstName + ", lastName=" + lastName + ", dob="
				+ dob + ", gender=" + gender + ", insurance=" + insurance + ", race=" + race + ", refill=" + refill
				+ ", physican_name=" + physican_name + ", allergy=" + allergy + ", address=" + address + ", zipcode="
				+ zipcode + "]";
	}


}
