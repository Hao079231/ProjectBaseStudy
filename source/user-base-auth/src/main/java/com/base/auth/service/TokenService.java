package com.base.auth.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2RefreshToken;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Service;

@Service
public class TokenService {
  @Autowired
  TokenStore tokenStore;

  public void revokeRefreshToken(){
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    if (!(authentication instanceof AnonymousAuthenticationToken)) {
      OAuth2AuthenticationDetails oauthDetails =
          (OAuth2AuthenticationDetails) authentication.getDetails();
      if (oauthDetails != null) {
        String tokenValue = oauthDetails.getTokenValue();
        OAuth2AccessToken accessToken = tokenStore.readAccessToken(tokenValue);
        if (accessToken != null){
          OAuth2RefreshToken oAuth2RefreshToken = accessToken.getRefreshToken();
          if (oAuth2RefreshToken != null){
            tokenStore.removeRefreshToken(oAuth2RefreshToken);
          }
        }
      }
    }
  }
}
