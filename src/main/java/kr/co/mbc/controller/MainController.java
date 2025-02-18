package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	
	@GetMapping("/reservation")
	public String reservation() {
		return "reservation/reservation";
	}

	@GetMapping("/index")
	public void index() {
		
	}
}
