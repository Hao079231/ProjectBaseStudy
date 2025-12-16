package com.base.auth.controller;

import com.base.auth.dto.ApiMessageDto;
import com.base.auth.dto.ResponseListDto;
import com.base.auth.dto.sync.SyncLogDto;
import com.base.auth.mapper.SyncLogMapper;
import com.base.auth.model.SyncLog;
import com.base.auth.model.criteria.SyncLogCriteria;
import com.base.auth.repository.SyncLogRepository;
import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/sync")
@CrossOrigin(origins = "*", allowedHeaders = "*")
@Slf4j
public class SyncController {
  @Autowired
  SyncLogRepository syncLogRepository;

  @Autowired
  SyncLogMapper syncLogMapper;

  @GetMapping(value = "/list", produces = MediaType.APPLICATION_JSON_VALUE)
  @PreAuthorize("hasRole('SY_L')")
  public ApiMessageDto<ResponseListDto<List<SyncLogDto>>> list(SyncLogCriteria syncLogCriteria, Pageable pageable){
    ApiMessageDto<ResponseListDto<List<SyncLogDto>>> apiMessageDto = new ApiMessageDto<>();
    ResponseListDto<List<SyncLogDto>> responseListDto = new ResponseListDto<>();
    Page<SyncLog> syncLogs = syncLogRepository.findAll(syncLogCriteria.getSpecification(), pageable);
    List<SyncLogDto> syncLogDtos = syncLogMapper.fromEntityToSyncLogDtoList(syncLogs.getContent());
    responseListDto.setContent(syncLogDtos);
    responseListDto.setTotalElements(syncLogs.getTotalElements());
    responseListDto.setTotalPages(syncLogs.getTotalPages());
    apiMessageDto.setData(responseListDto);
    apiMessageDto.setMessage("Get list sync log success");
    return apiMessageDto;
  }
}
