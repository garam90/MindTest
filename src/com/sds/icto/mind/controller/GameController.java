package com.sds.icto.mind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/game")
public class GameController {

	@RequestMapping(value={"","/"})
	public String game(){
		return "game/gameMain";
	}
	
	@RequestMapping("/cube")
	public String cube(){
		return "game/cube";
	}
	
	@RequestMapping("/huddle")
	public String huddle(){
		return "game/huddle";
	}
	
	@RequestMapping("/ddong")
	public String ddong(){
		return "game/ddong";
	}
	
}
