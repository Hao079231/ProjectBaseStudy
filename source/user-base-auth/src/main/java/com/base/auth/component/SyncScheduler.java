package com.base.auth.component;

import com.base.auth.constant.UserBaseConstant;
import com.base.auth.model.SyncLog;
import com.base.auth.repository.SyncLogRepository;
import com.base.auth.service.SyncService;
import java.util.Optional;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
@Slf4j
public class SyncScheduler {
  @Autowired
  SyncLogRepository syncLogRepository;

  @Autowired
  SyncService syncService;

  @Scheduled(fixedDelay = 5000, initialDelay = 10000)
  public void retryFailedSync() {
    try {
      // Lấy 1 dòng cũ nhất có retryCount < 5
      Optional<SyncLog> optionalSyncLog = syncLogRepository.findOldestFailedSyncForRetry();
      if (optionalSyncLog.isPresent()) {
        SyncLog syncLog = optionalSyncLog.get();
        log.info("===> SCHEDULER: Retrying SyncLog id={}, entity={}, type={}, retryCount={}/{}",
            syncLog.getId(),
            syncLog.getEntity(),
            syncLog.getType(),
            syncLog.getRetryCount(),
            UserBaseConstant.SYNC_MAX_RETRY);
        syncService.retrySync(syncLog);
      }
    } catch (Exception e) {
      log.error("===> SCHEDULER Error: ", e);
    }
  }
}
