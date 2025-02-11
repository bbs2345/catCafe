package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller("/catCafe")
public class MainController {

	@GetMapping("/index")
	public void index() {
		
	}
}
