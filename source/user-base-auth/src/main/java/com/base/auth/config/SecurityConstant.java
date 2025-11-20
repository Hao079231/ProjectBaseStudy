package com.base.auth.config;

public class SecurityConstant {
    public static final String GRANT_TYPE_PASSWORD = "password";
    public static final String GRANT_TYPE_USER = "user";

    // Redis prefix
    public static final String REDIS_PREFIX = "auth:blacklist:access:";
}
