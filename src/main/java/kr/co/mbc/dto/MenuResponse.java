package kr.co.mbc.dto;


import java.util.List;

import kr.co.mbc.entity.AttachEntity;
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
	
	private int price;
	private String text;
	private String img;
	private SubCateEntity subcate;
	private List<AttachEntity>attachList;
}
