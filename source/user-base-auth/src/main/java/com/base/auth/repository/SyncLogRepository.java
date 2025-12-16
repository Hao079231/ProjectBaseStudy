package com.base.auth.repository;

import com.base.auth.model.SyncLog;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

public interface SyncLogRepository extends JpaRepository<SyncLog, Long>, JpaSpecificationExecutor<SyncLog> {

  @Query(value = "SELECT * FROM db_sync_log where status = 0 ORDER BY created_date ASC LIMIT 1", nativeQuery = true)
  Optional<SyncLog> findOldestFailedSyncForRetry();
}
