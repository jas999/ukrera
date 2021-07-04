package com.ukrera.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
	
	@Autowired
	private LoginRepository loginRepository ;
	
	public UserMaster authenticateUser(UserMaster userMaster) {
		
		UserMaster um = loginRepository.findByRegistrationId(userMaster.getRegistrationId());
		
		if(um != null && um.getPassword().equals(userMaster.getPassword())) {
			return um ;
		}
		else 
			return null ;
	}

}
