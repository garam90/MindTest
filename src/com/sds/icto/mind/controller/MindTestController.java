package com.sds.icto.mind.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/test")
public class MindTestController {

	@RequestMapping(value={"","/"})
	public String testMain(){
		return "/test/testMain";
	}
	
	@RequestMapping("/desertInfo")
	public String desertInfo(){
		return "/test/DesertInfo";
	}

	@RequestMapping("/desert")
	public String desertTest(){
		return "/test/Desert";
	}
	
	@RequestMapping("/desertResult")
	public String desertResult(@RequestParam String monkey, @RequestParam String bird, @RequestParam String snake, Model model){
		model.addAttribute("monkey", monkey);
		model.addAttribute("bird", bird);
		model.addAttribute("snake", snake);
		
		return "/test/DesertResult";
	}
	
	@RequestMapping("/animal")
	public String animal(){
		return "test/Animal";
	}
	
	@RequestMapping("/AnimalResult")
	public String animalResult(@RequestParam String animal, Model model){
		model.addAttribute("animal", animal);
		
		return "test/AnimalResult";
	}
	
	@RequestMapping("/animal2")
	public String animal2(){
		return "test/Animal2";
	}
	
	@RequestMapping("/AnimalResult2")
	public String animalResult2(@RequestParam String animal, Model model){
		model.addAttribute("animal", animal);
		
		return "test/AnimalResult2";
	}
	
	@RequestMapping("/breadInfo")
	public String breadInfo(){
		return "test/BreadInfo";
	}
	
	@RequestMapping(value="/bread", method=RequestMethod.GET)
	public String breadChoice(){
		return "test/Bread";
	}
	
	@RequestMapping(value="/bread", method=RequestMethod.POST)
	public String breadResult(Model model, @RequestParam String bread){
		model.addAttribute("bread", bread);
		return "test/BreadResult";
	}
	
	@RequestMapping("/color")
	public String color(){
		return "test/Color";
	}
	
	@RequestMapping("/ColorResult")
	public String colorResult(@RequestParam String color, Model model){
		model.addAttribute("color", color);
		return "test/ColorResult";
	}
}
