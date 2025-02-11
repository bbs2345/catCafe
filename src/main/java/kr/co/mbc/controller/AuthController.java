package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mbc.dto.UserForm;
import kr.co.mbc.service.UserService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthController {
	
	private final UserService userService;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "auth/loginForm";
	}
	
	@PostMapping("/save")
	public String save(UserForm userForm) {
		System.out.println("====================================");
		System.out.println(userForm);
		System.out.println("====================================");
		userService.save(userForm);
		
		return "redirect:/index";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "auth/joinForm";
	}

}
