package kr.co.mbc.repository;

import org.apache.ibatis.annotations.Mapper;

import kr.co.mbc.entity.UserEntity;

@Mapper
public interface UserRepository {

	void save(UserEntity userEntity);


	
	
}
