package com.sds.icto.mind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value={"","/","/index"})
	public String index(){
		return "main/index";
	}
	
	@RequestMapping("/enter")
	public String enter(){
		return "main/enter";
	}

	@RequestMapping("/main")
	public String main(){
		return "main/main";
	}
	
}
