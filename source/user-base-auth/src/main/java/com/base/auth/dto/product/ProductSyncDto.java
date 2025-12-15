package com.base.auth.dto.product;

import java.util.Date;
import java.text.SimpleDateFormat;
import lombok.Data;

@Data
public class ProductSyncDto {

  private Long id;
  private String name;
  private String description;
  private Double price;
  private Float discount;
  private Double finalPrice;
  private Integer stock;
  private String thumbnailUrl;
  private Long categoryId;
  private String categoryName;
  private Integer status;
  private Date createdDate;
  private Date modifiedDate;

  private static final String DATE_PATTERN = "yyyy-MM-dd HH:mm:ss";

  public String toJsonString() {
    StringBuilder sb = new StringBuilder(512);
    // Thêm từng field theo dạng kiểu JSON
    sb.append("{");
    append(sb, "id", id);
    append(sb, "name", name);
    append(sb, "description", description);
    append(sb, "price", price);
    append(sb, "discount", discount);
    append(sb, "finalPrice", finalPrice);
    append(sb, "stock", stock);
    append(sb, "thumbnailUrl", thumbnailUrl);
    append(sb, "categoryId", categoryId);
    append(sb, "categoryName", categoryName);
    append(sb, "status", status);
    append(sb, "createdDate", format(createdDate));
    append(sb, "modifiedDate", format(modifiedDate), false); // field cuối không có dấu phẩy
    sb.append("}");
    return sb.toString();
  }

  // Hàm để mặc định những field thêm vào sẽ có dấu phẩy ở cuối
  private void append(StringBuilder sb, String key, Object value) {
    append(sb, key, value, true);
  }

  // Hàm xử lý
  private void append(StringBuilder sb, String key, Object value, boolean comma) {
    sb.append("\"").append(key).append("\":"); // Thêm key vào ngoặc kép. VD: id -> "id"
    if (value == null) {
      sb.append("null"); // Nếu giá trị truyền vào là null thì thêm null
    } else if (value instanceof Number) {
      sb.append(value); // Nếu giá trị truyền vào là số thì thêm số
    } else {
      sb.append("\"").append(escapeJson(value.toString())).append("\""); // Nếu giá trị truyền vào là chuỗi hoặc ký tự khác thì cho vào ngoặc kép
    }
    if (comma) sb.append(","); // giá trị comma = true thì thêm dấu phẩy
  }

  private String format(Date date) {
    if (date == null) return null;
    return new SimpleDateFormat(DATE_PATTERN).format(date);
  }

  private String escapeJson(String value) {
    return value
        .replace("\\", "\\\\")
        .replace("\"", "\\\"")
        .replace("\n", "\\n")
        .replace("\r", "\\r")
        .replace("\t", "\\t");
  }
}
