package com.ukrera.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	LoginService service ;
	
	@Autowired
	HttpSession session ;
	
	@GetMapping(path = "/loginPage")
	public ModelAndView viewLogin() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("userMaster", new UserMaster());
		mv.setViewName("login");
		return mv;

	}
	
	@PostMapping(path="/login")
	public ModelAndView doLogin(@ModelAttribute(name="user") UserMaster userMaster) {
		ModelAndView mv = new ModelAndView();
		UserMaster um = service.authenticateUser(userMaster);
		if(um == null) {
			mv.addObject("ERROR_MSG", "Invalid Credentials");
			mv.setViewName("login");
		}
		else {
			mv.setViewName("dashboard");
		}
		
		return mv ;
		
		
		
		
	}

}
