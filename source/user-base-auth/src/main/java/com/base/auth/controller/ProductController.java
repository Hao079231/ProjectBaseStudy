package com.base.auth.controller;

import com.base.auth.dto.ApiMessageDto;
import com.base.auth.exception.NotFoundException;
import com.base.auth.form.product.CreateProductForm;
import com.base.auth.mapper.ProductMapper;
import com.base.auth.model.Category;
import com.base.auth.model.Product;
import com.base.auth.repository.CategoryRepository;
import com.base.auth.repository.ProductRepository;
import javax.validation.Valid;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/product")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@Slf4j
public class ProductController extends ABasicController{
  @Autowired
  ProductRepository productRepository;

  @Autowired
  ProductMapper productMapper;

  @Autowired
  CategoryRepository categoryRepository;

  @PostMapping(value = "/create", produces = MediaType.APPLICATION_JSON_VALUE)
  @PreAuthorize("hasRole('PR_C')")
  public ApiMessageDto<String> create(@Valid @RequestBody CreateProductForm createProductForm, BindingResult bindingResult){
    ApiMessageDto<String> apiMessageDto = new ApiMessageDto<>();
    Category category = categoryRepository.findById(createProductForm.getCategoryId()).orElseThrow(()
    -> new NotFoundException("Category not found"));
    Product product = productMapper.fromCreateProductFormToEntity(createProductForm);
    Double finalPrice = createProductForm.getPrice() * (createProductForm.getDiscount() / 100);
    product.setFinalPrice(finalPrice);
    product.setCategory(category);
    productRepository.save(product);
    apiMessageDto.setMessage("Create product success");
    return apiMessageDto;
  }
}
