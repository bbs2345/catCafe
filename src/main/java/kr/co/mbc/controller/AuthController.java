package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;
import kr.co.mbc.dto.UserForm;
import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.service.UserService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/auth")
@RequiredArgsConstructor
public class AuthController {
	
	private final UserService userService;

	//어스 로그아웃
	@GetMapping("/logout")
	public String logout() {
		return "redirect:/";
	}
	
	// 로그인 포스트
	@PostMapping("/login")
	public String login(String username, String password, HttpSession session) {
		
		UserEntity userEntity = userService.findByUsername(username);
		// 유저엔티티 유저네임 없으면 로그인페이지리턴
        if (userEntity == null) {
	        return "auth/loginForm";
	    }
		
		return "redirect:/";
	}
	
	//어스 로그인
	@GetMapping("/loginForm")
	public String login() {
		return "auth/loginForm";
	}
	
	// 회원가입 처리
	@PostMapping("/save")
	public String insert(@ModelAttribute("userForm") UserForm userForm, BindingResult bindingResult) {
		System.out.println(userForm);
		UserEntity userEntity = UserEntity.toUserEntity(userForm);
		userService.save(userEntity);
		System.out.println(userEntity);
//		return "redirect:/user/read/" + userForm.getUsername();
		return "redirect:/index";
	}
	
	//어스인서트
	@GetMapping("/joinForm")
	public String joinForm() {
		return "auth/joinForm";
	}
	

}
