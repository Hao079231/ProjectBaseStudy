package com.base.auth.model.criteria;

import com.base.auth.model.SyncLog;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import lombok.Data;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.jpa.domain.Specification;

@Data
public class SyncLogCriteria {
  private String entity;
  private String type;

  public Specification<SyncLog> getSpecification() {
    return new Specification<SyncLog>() {
      private static final long serialVersionUID = 1L;

      @Override
      public Predicate toPredicate(Root<SyncLog> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
        List<Predicate> predicates = new ArrayList<>();
        if (StringUtils.isNotEmpty(getEntity()))
        {
          predicates.add(cb.like(cb.lower(root.get("entity")),"%"+ getEntity()+"%"));
        }
        if (StringUtils.isNotEmpty(getType()))
        {
          predicates.add(cb.like(cb.lower(root.get("type")),"%"+ getType()+ "%"));
        }

        return cb.and(predicates.toArray(new Predicate[predicates.size()]));
      }
    };
  }
}
