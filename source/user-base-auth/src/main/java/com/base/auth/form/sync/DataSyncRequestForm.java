package com.base.auth.form.sync;

import lombok.Data;

@Data
public class DataSyncRequestForm {
  private String entity;
  private String type;
  private String payload;
}
