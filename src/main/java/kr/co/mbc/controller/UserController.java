package kr.co.mbc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.service.UserService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class UserController {

	//유저-리드,수정,삭제, 
	//어드민 - 유저리스트, 관리자홈, 메뉴이미지
	//어스 로그인 로그아웃, 인서트,
	
	private final UserService userService;
	
	@GetMapping("/read/{username}")
	public String read(@PathVariable("username") String username,
												Model model) {
		UserEntity user = userService.findByUsername(username);
		
		model.addAttribute("user", user);
		
		return "user/read";
	}
}
