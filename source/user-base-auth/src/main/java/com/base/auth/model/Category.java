package com.base.auth.model;


import com.base.auth.component.EntityListener;
import com.base.auth.component.SyncEntityListener;
import com.base.auth.dto.category.CategorySyncDto;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;

@Entity
@Table(name = "db_user_base_category")
@EntityListeners({AuditingEntityListener.class, EntityListener.class, SyncEntityListener.class})
@Getter
@Setter
public class Category extends Auditable<String> implements Syncable<CategorySyncDto>{
    @Id
    @GenericGenerator(name = "idGenerator", strategy = "com.base.auth.service.id.IdGenerator")
    @GeneratedValue(generator = "idGenerator")
    private Long id;
    @Column(name = "name", unique = true)
    private String name;
    @Column(name = "description" ,  columnDefinition = "TEXT")
    private String description;
    private String image;
    private Integer ordering;
    private Integer kind;

    // Entity Category sẽ tự quản lý việc convert sang JSON
    @Override
    public CategorySyncDto toSyncPayload() {
        CategorySyncDto dto = new CategorySyncDto();
        dto.setId(this.id);
        dto.setName(this.name);
        dto.setDescription(this.description);
        dto.setImage(this.image);
        dto.setOrdering(this.ordering);
        dto.setKind(this.kind);
        dto.setStatus(this.getStatus());
        dto.setCreatedDate(this.getCreatedDate());
        dto.setModifiedDate(this.getModifiedDate());
        return dto;
    }

    @Override
    public String toPayloadString() {
        CategorySyncDto dto = toSyncPayload();
        return dto.toJsonString();
    }
}
