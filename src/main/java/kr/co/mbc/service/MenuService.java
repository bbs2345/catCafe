package kr.co.mbc.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.mbc.entity.MenuEntity;
import kr.co.mbc.repository.MenuRepository;
import kr.co.mbc.utils.UploadFileUtils;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MenuService {
	
	private final MenuRepository menuRepository;
	
	private final UploadFileUtils uploadFileUtils;
	
	


	public boolean checkMenuName(String name) {
		// TODO Auto-generated method stub
		return menuRepository.existsByName(name);
	}

	public void menuInsert(MenuEntity menuEntity, MultipartFile multipartFile) {		
		String orgFileName = uploadFileUtils.uploadTest(multipartFile);
		menuEntity.setImg(orgFileName);
		
		menuRepository.save(menuEntity);
	}



}
