package kr.co.mbc.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.mbc.entity.MenuEntity;
import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.service.CateService;
import kr.co.mbc.service.MenuService;
import kr.co.mbc.service.UserService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final UserService userService;
    private final CateService cateService;
    private final MenuService menuService;
    
    // 메뉴이름 중복확인 
    @GetMapping("/menu/check")
    public ResponseEntity<Boolean> checkMenuName(@RequestParam String name) {
        boolean check = menuService.checkMenuName(name);
        return ResponseEntity.ok(check);
    }
    
    // 메뉴 인서트 기능
    @PostMapping("/menuInsert")
    public String menuInsert(@ModelAttribute MenuEntity menuEntity, MultipartHttpServletRequest mRequest) {
    	menuEntity.getSubcate();
    	menuService.menuInsert(menuEntity,mRequest.getFile("myfile"));
    	
//    	MultipartFile multipartFile = mRequest.getFile("myfile");
//    	menuService.menuInsert(menuEntity,multipartFile);
    	
        return "redirect:/admin/home";
    }

    // 서브카테고리 중복확인 
    @GetMapping("/subcate/check")
    public ResponseEntity<Boolean> checkSubCate(@RequestParam String cname, @RequestParam String scname) {
        boolean check = cateService.isCheckSubCate(cname, scname);
        return ResponseEntity.ok(check);
    }
    
    // 카테고리 중복확인
    @GetMapping("/cate/check")
    public ResponseEntity<Boolean> checkCate(@RequestParam String cname) {
        boolean check = cateService.isCheckCate(cname);
        return ResponseEntity.ok(check);
    }
    
    //서브카테고리 카테고리 cname으로 scname 목록조회
    @GetMapping("/subcate/names")
    @ResponseBody
    public List<String> getSubCateScnames(@RequestParam("cname") String cname) {
        return cateService.getSubCateScnamesByCate(cname);
    }
    
    //카테고리 cname 목록조회
    @GetMapping("/cate/names")
    @ResponseBody
    public List<String> getCateCname() {
        return cateService.getCateCname();
    }

    // 서브카테고리 인서트 기능
    @PostMapping("/subcateInsert")
    public String subcateInsert(String cname, String scname) {
        cateService.subInsert(cname, scname);
        return "admin/home";
    }

    // 카테고리 인서트 기능
    @PostMapping("/cateInsert")
    public String cateinsert(String cname) {
        System.out.println(cname);
        cateService.save(cname);
        return "admin/home";
    }

    // 카테고리 인서트
    @GetMapping("/cateInsert")
    public String cateInsert() {
        return "admin/cateInsert";
    }

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

