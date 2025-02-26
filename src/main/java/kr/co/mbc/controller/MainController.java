package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/about")
	public String about() {
		return "sub/about";
	}
	
	@GetMapping("/events")
	public String events() {
		return "sub/events";
	}
	
	@GetMapping("/chefs")
	public String chefs() {
		return "sub/chefs";
	}
	
	@GetMapping("/gallery")
	public String gallery() {
		return "sub/gallery";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "sub/contact";
	}
	
	@GetMapping("/menu")
	public String menu() {
		return "sub/menu";
	}
	
	@GetMapping("/reservation")
	public String reservation() {
		return "sub/reservation";
	}

	@GetMapping("/index")
	public void index() {
	}
}
