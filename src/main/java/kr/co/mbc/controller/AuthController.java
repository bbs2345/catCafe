package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.mbc.dto.UserForm;
import kr.co.mbc.service.UserService;
import kr.co.mbc.vo.UserVo;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@RequestMapping("/auth")
public class AuthController {
	
	private final UserService userService;
	
	@GetMapping("/read")
	public String findByUsername(String username, Model model, RedirectAttributes rttr) {
		
		System.out.println("===========================================");
		System.out.println(username);
		System.out.println("===========================================");
		
		UserVo vo = userService.findByUsername(username);
		
		System.out.println("===========================================");
		System.out.println(vo);
		System.out.println("===========================================");
		
		model.addAttribute("vo", vo);
		rttr.addFlashAttribute("vo", vo);
		return "redirect:/index";
	}
	
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
