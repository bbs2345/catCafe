package kr.co.mbc.service;

import org.springframework.stereotype.Service;

import kr.co.mbc.dto.UserForm;
import kr.co.mbc.mapper.UserMapper;
import kr.co.mbc.vo.UserVo;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserMapper userMapper;

	public void save(UserForm userForm) {
		
		UserVo userVo = UserVo.builder()
				.username(userForm.getUsername())
				.password(userForm.getPassword())
				.name(userForm.getName())
				.email(userForm.getEmail())
				.phone(userForm.getPhone())
				.role("ROLE_USER").build();
		userMapper.save(userVo);
	}

	public UserVo findByUsername(String username) {
		return userMapper.findByUsername(username);
	}

}
