package kr.co.mbc.dto;


import kr.co.mbc.entity.SubCateEntity;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@ToString
public class MenuResponse {
	private String name;
	
	private String price;
	private String text;
	private String img;
	private SubCateEntity subcate;
}
