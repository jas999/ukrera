package com.ukrera.complaint.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ukrera.complaint.model.ComplaintDocument;

@Repository
public interface ComplaintDocumentRepository extends CrudRepository<ComplaintDocument, Long> {

	List<ComplaintDocument> findByComplaintId(Long id);

}
