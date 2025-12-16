package com.base.auth.component;

import com.base.auth.constant.UserBaseConstant;
import com.base.auth.model.Syncable;
import com.base.auth.service.SyncService;
import javax.persistence.PostPersist;
import javax.persistence.PostRemove;
import javax.persistence.PostUpdate;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class SyncEntityListener {
  @Autowired
  SyncService syncService;

  @PostPersist
  public void onPostPersist(Object entity) {
    if (entity instanceof Syncable) { // Kiểm tra entity phải implement Syncable thì mới thực hiện được
      syncService.saveSyncLog((Syncable<?>) entity, UserBaseConstant.SYNC_TYPE_INSERT);
    }
  }

  @PostUpdate
  public void onPostUpdate(Object entity) {
    if (entity instanceof Syncable) {
      syncService.saveSyncLog((Syncable<?>) entity, UserBaseConstant.SYNC_TYPE_UPDATE);
    }
  }

  @PostRemove
  public void onPostRemove(Object entity) {
    if (entity instanceof Syncable) {
      syncService.saveSyncLog((Syncable<?>) entity, UserBaseConstant.SYNC_TYPE_DELETE);
    }
  }
}
