package com.base.auth.service;

import com.base.auth.component.SyncApiHandler;
import com.base.auth.dto.sync.SyncNotificationDto;
import com.base.auth.model.SyncLog;
import com.base.auth.model.Syncable;
import com.base.auth.repository.SyncLogRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

@Service
@Slf4j
public class SyncService {
  @Autowired
  SyncLogRepository syncLogRepository;

  @Autowired
  SyncApiHandler syncApiHandler;

  @Async // Chạy trong thread pool riêng, không chặn request truyền vào
  public void saveSyncLog(Syncable<?> entity, String type) {
    try {
      SyncLog syncLog = new SyncLog();
      syncLog.setEntity(entity.getEntityName());
      syncLog.setType(type);

      String payloadString = entity.toPayloadString(); // Chuyển Object thành String để dễ lưu vào DB, dễ đọc và có thể truyền đi JSON sang source đồng bộ
      syncLog.setPayload(payloadString); // Dữ liệu sẽ được lưu vào DB
      syncLogRepository.save(syncLog);
      log.info("Saved sync log for entity: {}, type: {}, payload: {}",
          entity.getEntityName(), type, payloadString);
    } catch (Exception e) {
      log.error("Error saving sync log for entity: {}, type: {}",
          entity.getEntityName(), type, e);
    }
  }

  public void callSync(SyncLog syncLog) {
    try{
      SyncNotificationDto response = syncApiHandler.notifySync(
          syncLog.getEntity(),
          syncLog.getType(),
          syncLog.getPayload()
      );

      if (response.isResult()) {
        log.info("===> SYNC RETRY SUCCESS");
        syncLogRepository.delete(syncLog);
      } else {
        syncLog.setRetryCount(syncLog.getRetryCount() + 1);
        syncLogRepository.save(syncLog);
      }
    } catch (Exception e){
      log.error("===> SYNC ERROR: {}", e.getMessage());
      syncLog.setRetryCount(syncLog.getRetryCount() + 1);
      syncLogRepository.save(syncLog);
    }
  }
}
