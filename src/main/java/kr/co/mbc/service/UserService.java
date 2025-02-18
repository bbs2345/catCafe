package kr.co.mbc.service;

import java.util.List;

import org.springframework.stereotype.Service;

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



}
