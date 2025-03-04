package kr.co.mbc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.co.mbc.entity.AttachEntity;
import kr.co.mbc.entity.MenuEntity;

public interface AttachRepository extends JpaRepository<AttachEntity, Long>{

	List<AttachEntity> findByFilename(String filename);

	List<AttachEntity> findByMenu(MenuEntity dto);

}
