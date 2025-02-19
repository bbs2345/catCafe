package kr.co.mbc.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import jakarta.transaction.Transactional;
import kr.co.mbc.entity.UserEntity;
import kr.co.mbc.repository.UserRepository;
import lombok.RequiredArgsConstructor;
@Service
@RequiredArgsConstructor
public class UserService {

	private final UserRepository userRepository;
	

	public UserEntity findByUsername(String username) {
		return userRepository.findByUsername(username);
	}


	public void save(UserEntity userEntity) {
		userRepository.save(userEntity);
	}


	public List<UserEntity> findAll() {
		List<UserEntity> list = userRepository.findAll();
		return list;
	}

	@Transactional
	public void deleteByUsername(String username) {
		userRepository.deleteByUsername(username);
	}


	public void update(Map<String, String> map) {
		String username = map.get("username");
		UserEntity userEntity = userRepository.findByUsername(username);
		userEntity.setEmail(map.get("email"));
		userEntity.setPhone(map.get("phone"));
		userEntity.setName(map.get("name"));
		
		userRepository.save(userEntity);
	}






}
