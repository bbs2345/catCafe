package kr.co.mbc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.co.mbc.entity.MenuEntity;

public interface MenuRepository extends JpaRepository<MenuEntity, Long>{

	boolean existsByName(String name);

	

}
