package com.base.auth.dto.sync;

import com.base.auth.dto.ABasicAdminDto;
import lombok.Data;

@Data
public class SyncLogDto extends ABasicAdminDto {
  private Long id;
  private String entity;
  private String type;
  private String payload;
  private Integer retryCount;
}
