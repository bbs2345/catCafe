package kr.co.mbc.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import kr.co.mbc.entity.CateEntity;
import kr.co.mbc.entity.SubCateEntity;
import kr.co.mbc.repository.CateRepository;
import kr.co.mbc.repository.SubCateRepository;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CateService {

    private final CateRepository cateRepository;
    private final SubCateRepository subCateRepository;


    public void save(String cname) {
        CateEntity cateEntity = new CateEntity();
        cateEntity.setId(null);
        cateEntity.setCname(cname);

        cateRepository.save(cateEntity);
    }

    public void subInsert(String cname, String scname) {
        SubCateEntity subCateEntity = new SubCateEntity();
        CateEntity dbEntity = cateRepository.findByCname(cname);

        if (dbEntity == null) {
            CateEntity cateEntity = new CateEntity();
            cateEntity.setCname(cname);
            cateRepository.save(cateEntity);
            subCateEntity.setScname(scname);
            subCateEntity.setCate(cateEntity);
            subCateRepository.save(subCateEntity);
        } else {
            subCateEntity.setScname(scname);
            subCateEntity.setCate(dbEntity);
            subCateRepository.save(subCateEntity);
        }
    }

    // 카테고리 목록을 반환하는 메서드
    public List<String> getCnameList() {
        List<CateEntity> cateList = cateRepository.findAll();
        // 카테고리 이름만 추출하여 리스트 반환
        return cateList.stream()
                       .map(CateEntity::getCname)
                       .collect(Collectors.toList());
    }
    
    //카테고리 이름가져오기
    public List<String> getCateCname() {
    	return cateRepository.findAll().stream()
    			.map(CateEntity::getCname)
    			.collect(Collectors.toList());
    }

    // 하위 카테고리 이름 목록 가져오기
    public List<String> getSubCateScnamesByCate(String cname) {
        // 카테고리 이름에 맞는 서브카테고리 목록을 가져오기
        List<SubCateEntity> subCateEntities = subCateRepository.findByCateCname(cname);
        return subCateEntities.stream()
                .map(SubCateEntity::getScname) // 하위 카테고리 이름을 추출
                .collect(Collectors.toList());
    }
    //카테고리 중복확인
	public boolean isCheckCate(String cname) {
		 return cateRepository.existsByCname(cname);
	}

    // 하위 카테고리 존재 여부 확인
    public boolean isCheckSubCate(String cname, String scname) {
        CateEntity cate = cateRepository.findByCname(cname);
        return cate != null && subCateRepository.existsByCateAndScname(cate, scname);
    }
    


}