package com.base.auth.dto.category;

import java.util.Date;
import java.text.SimpleDateFormat;
import lombok.Data;

@Data
public class CategorySyncDto {

  private Long id;
  private String name;
  private String description;
  private String image;
  private Integer ordering;
  private Integer kind;
  private Integer status;
  private Date createdDate;
  private Date modifiedDate;

  private static final String DATE_PATTERN = "yyyy-MM-dd HH:mm:ss";

  public String toJsonString() {
    StringBuilder sb = new StringBuilder(256);
    sb.append("{");

    append(sb, "id", id);
    append(sb, "name", name);
    append(sb, "description", description);
    append(sb, "image", image);
    append(sb, "ordering", ordering);
    append(sb, "kind", kind);
    append(sb, "status", status);
    append(sb, "createdDate", format(createdDate));
    append(sb, "modifiedDate", format(modifiedDate), false);

    sb.append("}");
    return sb.toString();
  }

  private void append(StringBuilder sb, String key, Object value) {
    append(sb, key, value, true);
  }

  private void append(StringBuilder sb, String key, Object value, boolean comma) {
    sb.append("\"").append(key).append("\":");
    if (value == null) {
      sb.append("null");
    } else if (value instanceof Number) {
      sb.append(value);
    } else {
      sb.append("\"").append(escapeJson(value.toString())).append("\"");
    }
    if (comma) sb.append(",");
  }

  private String format(Date date) {
    if (date == null) return null;
    return new SimpleDateFormat(DATE_PATTERN).format(date);
  }

  private String escapeJson(String value) {
    return value
        .replace("\\", "\\\\") // escape cho dấu \
        .replace("\"", "\\\"") // escape cho dấu "
        .replace("\n", "\\n")  // escape cho dấu xuống dòng \n
        .replace("\r", "\\r")  // escape cho dấu quay lại đầu dòng \r
        .replace("\t", "\\t"); // escape cho tab \t
  }
}
