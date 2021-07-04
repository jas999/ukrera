package com.ukrera.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	

	@RequestMapping("/")
	public ModelAndView welcome(Map<String, Object> model, HttpServletRequest request) {
		return new ModelAndView("home");
	}

}