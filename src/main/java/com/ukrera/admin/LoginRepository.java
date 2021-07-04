package com.ukrera.admin;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends CrudRepository<UserMaster, Long> {

	
	public UserMaster findByRegistrationId(Long registrationId);
	
}
