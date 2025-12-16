package com.base.auth.mapper;

import com.base.auth.dto.sync.SyncLogDto;
import com.base.auth.model.SyncLog;
import java.util.List;
import org.mapstruct.BeanMapping;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;
import org.mapstruct.NullValuePropertyMappingStrategy;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE,
    nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
public interface SyncLogMapper {
  @Mapping(source = "id", target = "id")
  @Mapping(source = "entity", target = "entity")
  @Mapping(source = "type", target = "type")
  @Mapping(source = "payload", target = "payload")
  @Mapping(source = "createdDate", target = "createdDate")
  @Mapping(source = "modifiedDate", target = "modifiedDate")
  @BeanMapping(ignoreByDefault = true)
  @Named("fromEntityToSyncLogDto")
  SyncLogDto fromEntityToSyncLogDto(SyncLog syncLog);

  @IterableMapping(elementTargetType = SyncLogDto.class, qualifiedByName = "fromEntityToSyncLogDto")
  List<SyncLogDto> fromEntityToSyncLogDtoList(List<SyncLog> syncLogs);
}
