package com.base.auth.service;

import com.base.auth.component.SyncApiHandler;
import com.base.auth.constant.UserBaseConstant;
import com.base.auth.dto.sync.SyncNotificationDto;
import com.base.auth.model.SyncLog;
import com.base.auth.repository.SyncLogRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class SyncService {
  @Autowired
  SyncLogRepository syncLogRepository;

  @Autowired
  SyncApiHandler syncApiHandler;

  @Autowired
  ObjectMapper objectMapper;

  public void syncAndLogFailure(String entity, String type, Object data){
    try {
      String payload = objectMapper.writeValueAsString(data);
      SyncNotificationDto response = syncApiHandler.notifySync(entity, type, payload);
      if (response.isResult()){
        log.info("====> SYNC SUCCESS");
      } else {
        log.warn("====> SYNC FAILED entity={}, type={}, error={}", entity, type, response.getMessage());
        createSyncLogFailure(entity, type, payload);
      }
    } catch (Exception e) {
      log.error("====> SYNC FAILED: ", e);
    }
  }

  public void retrySync(SyncLog syncLog) {
    try {
      syncLog.setRetryCount(syncLog.getRetryCount() + 1);
      SyncNotificationDto response = syncApiHandler.notifySync(
          syncLog.getEntity(),
          syncLog.getType(),
          syncLog.getPayload()
      );

      if (response.isResult()) {
        log.info("===> SYNC RETRY SUCCESS: id={}, retry={} - Deleting SyncLog", syncLog.getId(), syncLog.getRetryCount());
        syncLogRepository.delete(syncLog);
      } else {
        syncLogRepository.save(syncLog);
      }

    } catch (Exception e) {
      log.error("===> SYNC RETRY EXCEPTION: id={}, retry={}", syncLog.getId(), syncLog.getRetryCount(), e);
    }
  }

  private void createSyncLogFailure(String entity, String type, String payload){
      SyncLog syncLog = new SyncLog();
      syncLog.setEntity(entity);
      syncLog.setType(type);
      syncLog.setPayload(payload);
      syncLogRepository.save(syncLog);
  }
}
