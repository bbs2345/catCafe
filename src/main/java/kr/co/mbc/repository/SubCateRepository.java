package kr.co.mbc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.co.mbc.entity.CateEntity;
import kr.co.mbc.entity.SubCateEntity;

public interface SubCateRepository extends JpaRepository<SubCateEntity, Long>{

	List<SubCateEntity> findByCateId(Long categoryId);

	List<SubCateEntity> findByCateCname(String cname);

	boolean existsByCateAndScname(CateEntity cate, String scname);


}
