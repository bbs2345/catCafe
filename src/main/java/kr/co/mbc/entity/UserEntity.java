package kr.co.mbc.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import kr.co.mbc.dto.UserForm;
import kr.co.mbc.dto.UserResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Entity
@Table(name = "tbl_user")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@ToString
public class UserEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; // 유저넘버
	@Column(nullable = false, unique = true)
	private String username; // 아이디
	@Column(nullable = false)
	private String password; // 패스워드
	@Column(nullable = false)
	private String name; // 네임
	private String email; // 이메일
	private String phone; // 전화번호
	
	private String role; // 등급

	
	// userForm -> userEntity로 변환
	public static UserEntity toUserEntity(UserForm userForm) {
		return UserEntity.builder()
				.username(userForm.getUsername())
				.password(userForm.getPassword())
				.name(userForm.getName())
				.email(userForm.getEmail())
				.phone(userForm.getPhone())
				.role("ROLE_USER")
				.build();
	}
	
	// userEntity -> userResponse로 변환
	public static UserResponse toUserResponse(UserEntity userEntity) {
		return UserResponse.builder()
				.username(userEntity.getUsername())
				.name(userEntity.getName())
				.password(userEntity.getPassword())
				.email(userEntity.getEmail())
				.phone(userEntity.getPhone())
				.role(userEntity.getRole())
				.build();
	}
	
}
