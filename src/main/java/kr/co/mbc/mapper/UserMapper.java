package kr.co.mbc.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.mbc.vo.UserVo;

@Mapper
public interface UserMapper {

	void save(UserVo userVo);

	UserVo findByUsername(String username);


	
	
}
