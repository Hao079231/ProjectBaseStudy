package com.base.auth.model;

// Thể hiện tính đa hình cho phép xử lý nhiều entity khác nhau
public interface Syncable<T> {
  default String getEntityName() {
    return this.getClass().getSimpleName();
  }

  T toSyncPayload();
  String toPayloadString();
}
