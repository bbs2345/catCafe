package kr.co.mbc.service;

import org.springframework.stereotype.Service;

import kr.co.mbc.dto.UserForm;
import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.repository.UserRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {
	
	private final UserRepository userRepository;

	public void save(UserForm userForm) {
		
		UserEntity userEntity = UserEntity.builder()
				.uno(null)
				.username(userForm.getUsername())
				.password(userForm.getPassword())
				.name(userForm.getName())
				.email(userForm.getEmail())
				.phone(userForm.getPhone())
				.role("ROLE_USER").build();
		userRepository.save(userEntity);
	}

}
