package hello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ForeignKey;

@Entity
public class PatientHistory {
	
	@Id
	private Integer id;
	private Integer patient_id;
	private String dol;
	private String treatment;
	private String dol2;
	private String treatment2;
	
	//private Patient patient;
	
	public Integer getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(Integer patient_id) {
		this.patient_id = patient_id;
	}
	public String getDol() {
		return dol;
	}
	public void setDol(String dol) {
		this.dol = dol;
	}
	public String getTreatment() {
		return treatment;
	}
	public void setTreatment(String treatment) {
		this.treatment = treatment;
	}
	public String getDol2() {
		return dol2;
	}
	public void setDol2(String dol2) {
		this.dol2 = dol2;
	}
	public String getTreatment2() {
		return treatment2;
	}
	public void setTreatment2(String treatment2) {
		this.treatment2 = treatment2;
	}
	
	@ManyToOne
    @JoinColumn(name = "patient_id")
	/*public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}*/
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "PatientHistory [id=" + id + ", patient_id=" + patient_id + ", dol=" + dol + ", treatment=" + treatment
				+ ", dol2=" + dol2 + ", treatment2=" + treatment2 + "]";
	}
	
	



}
