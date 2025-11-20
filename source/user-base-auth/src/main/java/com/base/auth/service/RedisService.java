package com.base.auth.service;

import com.base.auth.config.SecurityConstant;
import io.lettuce.core.api.sync.RedisCommands;
import java.time.Instant;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.stereotype.Service;

@Service
public class RedisService {
  @Autowired
  TokenStore tokenStore;

  @Autowired
  RedisCommands<String, String> redisCommands;

  private void blacklist(String tokenValue, Instant expiresAt){
    long ttl = Math.max(1, expiresAt.getEpochSecond() - Instant.now().getEpochSecond());
    String key = SecurityConstant.REDIS_PREFIX + tokenValue;
    redisCommands.setex(key, ttl, "1");
  }

  public boolean isBlacklisted(String tokenValue){
    return redisCommands.exists(SecurityConstant.REDIS_PREFIX + tokenValue) > 0;
  }

  public void logout(){
    Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
    if (!(authentication instanceof AnonymousAuthenticationToken)) {
      OAuth2AuthenticationDetails oauthDetails = (OAuth2AuthenticationDetails) authentication.getDetails();
      if (oauthDetails != null) {
        String accessTokenValue = oauthDetails.getTokenValue();
        OAuth2AccessToken accessToken = tokenStore.readAccessToken(accessTokenValue);
        Date exp = accessToken.getExpiration();
        blacklist(accessTokenValue, exp != null ? exp.toInstant() : Instant.now().plusSeconds(5));
      }
    }
  }
}
