package com.base.auth.component;

import com.base.auth.dto.sync.SyncNotificationDto;
import com.base.auth.form.sync.DataSyncRequestForm;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

@Component
@Slf4j
public class SyncApiHandler {
  @Autowired
  RestTemplate restTemplate;

  @Value("${sync.new.project.url}")
  String newProjectUrl;

  public SyncNotificationDto notifySync(Long syncLogId, String entity, String type, String payload){
    String url = newProjectUrl + "/v1/sync/process";
    log.info("===> SYNC REQUEST - Calling Project B: {} for entity: {}, type: {}",
        url, entity, type);
    HttpHeaders headers = new HttpHeaders();
    headers.setContentType(MediaType.APPLICATION_JSON);

    DataSyncRequestForm request = new DataSyncRequestForm();
    request.setSyncLogId(syncLogId);
    request.setEntity(entity);
    request.setPayload(payload);
    request.setType(type);

    HttpEntity<DataSyncRequestForm> httpEntity = new HttpEntity<>(request, headers);
    ResponseEntity<SyncNotificationDto> response = restTemplate.postForEntity(
        url, httpEntity, SyncNotificationDto.class);

    if (response.getStatusCode() == HttpStatus.OK && response.getBody() != null) {
      SyncNotificationDto body = response.getBody();
      return body;
    } else {
      SyncNotificationDto errorResponse = new SyncNotificationDto();
      errorResponse.setResult(false);
      errorResponse.setMessage("Sync error");
      return errorResponse;
    }
  }
}
