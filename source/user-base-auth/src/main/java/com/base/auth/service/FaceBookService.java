package com.base.auth.service;

import com.base.auth.config.SecurityConstant;
import com.base.auth.constant.UserBaseConstant;
import com.base.auth.dto.facebook.FacebookUserInfo;
import com.base.auth.exception.BadRequestException;
import com.base.auth.exception.NotFoundException;
import com.base.auth.form.facebook.FacebookLoginForm;
import com.base.auth.model.Account;
import com.base.auth.model.Group;
import com.base.auth.model.User;
import com.base.auth.repository.AccountRepository;
import com.base.auth.repository.GroupRepository;
import com.base.auth.repository.UserRepository;
import com.base.auth.service.impl.UserServiceImpl;
import java.util.HashMap;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.ClientDetails;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.TokenRequest;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
@Slf4j
public class FaceBookService {
  @Value("${facebook.graph.url}")
  String facebookGraphUrl;

  @Autowired
  RestTemplate restTemplate;

  @Autowired
  AccountRepository accountRepository;

  @Autowired
  GroupRepository groupRepository;

  @Autowired
  UserRepository userRepository;

  @Autowired
  ClientDetailsService clientDetailsService;

  @Autowired
  @Qualifier("defaultAuthorizationServerTokenServices")
  AuthorizationServerTokenServices tokenServices;

  @Value("${spring.oauth2.client.client-id}")
  String clientId;

  @Autowired
  UserServiceImpl userService;

  public OAuth2AccessToken loginWithFacebook(FacebookLoginForm facebookLoginForm){
    try{
      FacebookUserInfo facebookUserInfo = verifyToken(facebookLoginForm.getAccessToken());
      Account account = accountRepository.findAccountByUsername(facebookUserInfo.getId());
      if (account == null){
        account = createAccountFromFacebook(facebookUserInfo);
      }

      ClientDetails client = clientDetailsService.loadClientByClientId(clientId);
      TokenRequest tokenRequest = new TokenRequest(new HashMap<>(), clientId, client.getScope(), SecurityConstant.GRANT_TYPE_FACEBOOK);
      OAuth2AccessToken token = userService.getAccessTokenForFacebook(client, tokenRequest, account, tokenServices);
      return token;
    }catch (Exception e){
      log.error("===> Facebook login error: {}", e.getMessage());
      throw new BadRequestException("Facebook login failed: " + e.getMessage());
    }
  }

  private FacebookUserInfo verifyToken(String accessToken){
    try {
      String url = String.format("%s?fields=id,name&access_token=%s", facebookGraphUrl, accessToken);
      HttpHeaders headers = new HttpHeaders();
      HttpEntity<String> entity = new HttpEntity<>(headers);

      ResponseEntity<FacebookUserInfo> response = restTemplate.exchange(
          url, HttpMethod.GET, entity, FacebookUserInfo.class);

      if (response.getStatusCode().is2xxSuccessful() && response.getBody() != null) {
        return response.getBody();
      }
      throw new RuntimeException("Failed to verify Facebook token");
    } catch (Exception e) {
      log.error("===> Error verifying facebook token: {}", e.getMessage());
      throw new RuntimeException("Invalid facebook access token", e);
    }
  }

  private Account createAccountFromFacebook(FacebookUserInfo facebookUserInfo){
    Account account = new Account();
    account.setUsername(facebookUserInfo.getId());
    account.setFullName(facebookUserInfo.getName());
    account.setKind(UserBaseConstant.USER_KIND_USER);
    account.setStatus(UserBaseConstant.STATUS_ACTIVE);

    Group group = groupRepository.findFirstByKind(UserBaseConstant.USER_KIND_USER);
    if (group == null){
      throw new NotFoundException("Group not found");
    }
    account.setGroup(group);
    accountRepository.saveAndFlush(account);

    User user = new User();
    user.setAccount(account);
    userRepository.saveAndFlush(user);
    return account;
  }
}
