package com.ukrera.complaint.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complaintdocument")
public class ComplaintDocument {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id ;
	
	@Column(name="name")
	private String documentName;
	
	@Column(name="path")
	private String documentPath ;
	
	@Column(name="fileName")
	private String fileName ;
	
	
	@Column(name="complaintid")
	private Long complaintId;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="complaintid", insertable=false, updatable=false)
	private ComplaintModel complaintModel;
	

	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getComplaintId() {
		return complaintId;
	}

	public void setComplaintId(Long complaintId) {
		this.complaintId = complaintId;
	}

	public ComplaintModel getComplaintModel() {
		return complaintModel;
	}

	public void setComplaintModel(ComplaintModel complaintModel) {
		this.complaintModel = complaintModel;
	}

	public String getDocumentName() {
		return documentName;
	}

	public void setDocumentName(String documentName) {
		this.documentName = documentName;
	}

	public String getDocumentPath() {
		return documentPath;
	}

	public void setDocumentPath(String documentPath) {
		this.documentPath = documentPath;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	
	
}
