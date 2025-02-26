package kr.co.mbc.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import kr.co.mbc.dto.MenuResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder
@Table(name = "tbl_menu")
@ToString
public class MenuEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(nullable = false)
    private String name;
    
    @Column(nullable = false)
    private String price;
    
    private String text;
    
    private String img;
    
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "subcate_id")
    private SubCateEntity subcate;

    // MenuEntity -> MenuResponse로 변환
    public static MenuResponse toMenuResponse(MenuEntity menuEntity) {
        return MenuResponse.builder()
                .name(menuEntity.getName())
                .subcate(menuEntity.getSubcate())
                .price(menuEntity.getPrice())
                .text(menuEntity.getText())
                .img(menuEntity.getImg())
                .build();
    }
}
