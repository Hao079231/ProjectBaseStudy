package com.base.auth.mapper;

import com.base.auth.form.product.CreateProductForm;
import com.base.auth.model.Product;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValuePropertyMappingStrategy;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE,
    nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface ProductMapper {
  @Mapping(source = "name", target = "name")
  @Mapping(source = "description", target = "description")
  @Mapping(source = "price", target = "price")
  @Mapping(source = "discount", target = "discount")
  @Mapping(source = "stock", target = "stock")
  @Mapping(source = "thumbnailUrl", target = "thumbnailUrl")
  Product fromCreateProductFormToEntity(CreateProductForm createProductForm);
}
