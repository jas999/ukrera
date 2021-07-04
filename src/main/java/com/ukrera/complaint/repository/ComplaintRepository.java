package com.ukrera.complaint.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ukrera.complaint.model.ComplaintDocument;
import com.ukrera.complaint.model.ComplaintModel;

@Repository
public interface ComplaintRepository extends CrudRepository<ComplaintModel, Long>{

	

	
	
}
