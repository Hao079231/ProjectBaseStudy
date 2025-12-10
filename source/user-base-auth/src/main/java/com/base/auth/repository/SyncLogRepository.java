package com.base.auth.repository;

import com.base.auth.model.SyncLog;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface SyncLogRepository extends JpaRepository<SyncLog, Long>, JpaSpecificationExecutor<SyncLog> {

  @Query(value = "SELECT * FROM db_sync_log WHERE retry_count < 5 ORDER BY created_date ASC LIMIT 1", nativeQuery = true)
  Optional<SyncLog> findOldestFailedSyncForRetry();

  @Transactional
  @Modifying
  @Query("UPDATE SyncLog s SET s.retryCount = 0")
  void resetAllRetryCount();
}
