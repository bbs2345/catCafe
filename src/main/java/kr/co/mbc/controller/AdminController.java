package kr.co.mbc.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.service.UserService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

	private final UserService userService;
	// 회원목록
	@GetMapping("/list")
	public String list(Model model) {
		List<UserEntity> list = userService.findAll();
		
		model.addAttribute("list", list);
		
		return "admin/list";
	}
	
	@GetMapping("/home")
	public String home() {
		return "admin/home";
	}
	
	@GetMapping("/charts")
	public String charts() {
		return "admin/charts";
	}
	
	@GetMapping("/layout-sidenav-light")
	public String layout_sidenav_light() {
		return "admin/layout-sidenav-light";
	}
	
	@GetMapping("/layout-static")
	public String layout_static() {
		return "admin/layout-static";
	}
	
	@GetMapping("/tables")
	public String tables() {
		return "admin/tables";
	}
}
