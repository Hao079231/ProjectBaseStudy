package com.base.auth.form.facebook;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import javax.validation.constraints.NotEmpty;
import lombok.Data;

@Data
@ApiModel
public class FacebookLoginForm {
  @NotEmpty(message = "access token cannot be null")
  @ApiModelProperty(name = "accessToken", required = true)
  private String accessToken;
}
