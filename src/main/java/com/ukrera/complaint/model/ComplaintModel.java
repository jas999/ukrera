package com.ukrera.complaint.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "complaint")
@Entity
public class ComplaintModel {

	@Column(name = "id")
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(name = "name")
	private String name;

	@Column(name = "contactno")
	private String contactNo;

	@Column(name = "email")
	private String email;

	@Column(name = "address1")
	private String address1;

	@Column(name = "address2")
	private String address2;

	@Column(name = "fax")
	private String fax;

	@Column(name = "respondentname")
	private String respondentName;

	@Column(name = "respondentcontact")
	private String respondentContact;

	@Column(name = "respondentemail")
	private String respondentEmail;

	@Column(name = "respondentfax")
	private String respondentFax;

	@Column(name = "respondentaddress1")
	private String respondentAddress1;

	@Column(name = "respondentaddress2")
	private String respondentAddress2;

	@Column(name = "subject")
	private String subjectOfComplaint;

	@Column(name = "details", length = 5000)
	private String detailsOfComplaint;

	@Column(name = "reliefsought")
	private String reliefSoughtFromRera;

	@Column(name = "interimorder")
	private String interimOrderRequired;

	@Column(name = "feesamount")
	private String feesAmount;

	@Column(name = "bankname")
	private String bankName;

	@Column(name = "docnumber")
	private String docNumber;

	@Column(name = "assignedToRole")
	private Integer assignedToRole;

	@Column(name = "complaintRegistrationNumber")
	private String complaintRegistrationNo;

	public String getComplaintRegistrationNo() {
		return complaintRegistrationNo;
	}

	public void setComplaintRegistrationNo(String complaintRegistrationNo) {
		this.complaintRegistrationNo = complaintRegistrationNo;
	}

	public Integer getAssignedToRole() {
		return assignedToRole;
	}

	public void setAssignedToRole(Integer assignedToRole) {
		this.assignedToRole = assignedToRole;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getRespondentName() {
		return respondentName;
	}

	public void setRespondentName(String respondentName) {
		this.respondentName = respondentName;
	}

	public String getRespondentContact() {
		return respondentContact;
	}

	public void setRespondentContact(String respondentContact) {
		this.respondentContact = respondentContact;
	}

	public String getRespondentEmail() {
		return respondentEmail;
	}

	public void setRespondentEmail(String respondentEmail) {
		this.respondentEmail = respondentEmail;
	}

	public String getRespondentFax() {
		return respondentFax;
	}

	public void setRespondentFax(String respondentFax) {
		this.respondentFax = respondentFax;
	}

	public String getRespondentAddress1() {
		return respondentAddress1;
	}

	public void setRespondentAddress1(String respondentAddress1) {
		this.respondentAddress1 = respondentAddress1;
	}

	public String getRespondentAddress2() {
		return respondentAddress2;
	}

	public void setRespondentAddress2(String respondentAddress2) {
		this.respondentAddress2 = respondentAddress2;
	}

	public String getSubjectOfComplaint() {
		return subjectOfComplaint;
	}

	public void setSubjectOfComplaint(String subjectOfComplaint) {
		this.subjectOfComplaint = subjectOfComplaint;
	}

	public String getDetailsOfComplaint() {
		return detailsOfComplaint;
	}

	public void setDetailsOfComplaint(String detailsOfComplaint) {
		this.detailsOfComplaint = detailsOfComplaint;
	}

	public String getReliefSoughtFromRera() {
		return reliefSoughtFromRera;
	}

	public void setReliefSoughtFromRera(String reliefSoughtFromRera) {
		this.reliefSoughtFromRera = reliefSoughtFromRera;
	}

	public String getInterimOrderRequired() {
		return interimOrderRequired;
	}

	public void setInterimOrderRequired(String interimOrderRequired) {
		this.interimOrderRequired = interimOrderRequired;
	}

	public String getFeesAmount() {
		return feesAmount;
	}

	public void setFeesAmount(String feesAmount) {
		this.feesAmount = feesAmount;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getDocNumber() {
		return docNumber;
	}

	public void setDocNumber(String docNumber) {
		this.docNumber = docNumber;
	}

}
