package com.base.auth.model;

import com.base.auth.component.EntityListener;
import com.base.auth.component.SyncEntityListener;
import com.base.auth.dto.product.ProductSyncDto;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Table(name = "db_user_base_product")
@EntityListeners({AuditingEntityListener.class, EntityListener.class, SyncEntityListener.class})
@Getter
@Setter
public class Product extends Auditable<String> implements Syncable<ProductSyncDto>{
  @Id
  @GenericGenerator(name = "idGenerator", strategy = "com.base.auth.service.id.IdGenerator")
  @GeneratedValue(generator = "idGenerator")
  private Long id;
  @Column(name = "name", unique = true, nullable = false)
  private String name;
  @Column(name = "description" ,  columnDefinition = "TEXT")
  private String description;
  private Double price;
  private Float discount;
  private Double finalPrice;
  private Integer stock;
  private String thumbnailUrl;
  @ManyToOne
  @JoinColumn(name = "category_id", nullable = false)
  private Category category;

  // Entity Product sẽ tự quản lý việc convert sang JSON
  @Override
  public ProductSyncDto toSyncPayload() {
    ProductSyncDto dto = new ProductSyncDto();
    dto.setId(this.id);
    dto.setName(this.name);
    dto.setDescription(this.description);
    dto.setPrice(this.price);
    dto.setDiscount(this.discount);
    dto.setFinalPrice(this.finalPrice);
    dto.setStock(this.stock);
    dto.setThumbnailUrl(this.thumbnailUrl);
    dto.setCategoryId(this.category != null ? this.category.getId() : null);
    dto.setCategoryName(this.category != null ? this.category.getName() : null);
    dto.setStatus(this.getStatus());
    dto.setCreatedDate(this.getCreatedDate());
    dto.setModifiedDate(this.getModifiedDate());
    return dto;
  }

  @Override
  public String toPayloadString() {
    ProductSyncDto dto = toSyncPayload();
    return dto.toJsonString();
  }
}
