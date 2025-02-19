package kr.co.mbc.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.mbc.dto.UserResponse;
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
	
	//유저 리드 수정 ajax
	@PostMapping("/update")
	@ResponseBody
	public String update(@RequestParam Map<String, String> map) {
		userService.update(map);
		return "ok";
	}
	
	//유저삭제
	@PostMapping("/delete")
	public String delete(String username) {
		userService.deleteByUsername(username);	
		return "redirect:/auth/loginForm";
	}
	
	//유저상세보기
	@GetMapping("/read/{username}")
	public String read(@PathVariable("username") String username,
												Model model) {
		UserEntity userEntity = userService.findByUsername(username);
		UserResponse userResponse = UserEntity.toUserResponse(userEntity);
		model.addAttribute("userResponse", userResponse);
		
		return "user/read";
	}
}
