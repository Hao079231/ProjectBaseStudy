package com.base.auth.config;

import com.base.auth.service.RedisService;
import java.io.IOException;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationDetails;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

@Component
public class AccessTokenBlacklistFilter extends OncePerRequestFilter {

  @Autowired
  RedisService redisService;

  @Override
  protected void doFilterInternal(HttpServletRequest request,
      HttpServletResponse response, FilterChain filterChain)
      throws ServletException, IOException {
    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth instanceof OAuth2Authentication) {
      OAuth2AuthenticationDetails details = (OAuth2AuthenticationDetails) auth.getDetails();
      if (details != null) {
        String tokenValue = details.getTokenValue();
        if (tokenValue != null && redisService.isBlacklisted(tokenValue)) {
          response.sendError(HttpServletResponse.SC_UNAUTHORIZED, "Token revoked");
          return;
        }
      }
    }
    filterChain.doFilter(request, response);
  }
}
