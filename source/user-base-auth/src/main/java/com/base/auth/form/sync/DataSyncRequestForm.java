package com.base.auth.form.sync;

import lombok.Data;

@Data
public class DataSyncRequestForm {
  private Long syncLogId;
  private String entity;
  private String type;
  private String payload;
}
