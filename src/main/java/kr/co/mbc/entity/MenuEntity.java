package kr.co.mbc.entity;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
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
    private int price;
    
    private String text;
    
    private String img;
    
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "subcate_id")
    private SubCateEntity subcate;
    
    @OneToMany(mappedBy = "menu", cascade = CascadeType.REMOVE)
	@JsonIgnore
	private List<AttachEntity>attachList;


    // MenuEntity -> MenuResponse로 변환
    public static MenuResponse toMenuResponse(MenuEntity menuEntity) {
        return MenuResponse.builder()
                .name(menuEntity.getName())
                .subcate(menuEntity.getSubcate())
                .price(menuEntity.getPrice())
                .text(menuEntity.getText())
                .img(menuEntity.getImg())
                .attachList(menuEntity.getAttachList())
                .build();
    }
}
