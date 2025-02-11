package kr.co.mbc.entity;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
public class UserEntity {

	private Long uno; // 유저넘버
	
	private String username; // 유저네임
	
	private String password; // 패스워드
	
	private String name; // 네임
	
	private String email; // 이메일
	
	private String phone; // 전화번호
	
	private String role; // 등급

}
