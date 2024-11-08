package com.example.WebApps.FirstWebApp.service;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@org.springframework.stereotype.Controller
@SessionAttributes("name")
public class Controller {
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	public String JSPWelcome(ModelMap modelMap) {
		modelMap.put("name",getUserName());
		return "Welcome";
	}
	public String getUserName(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
}
