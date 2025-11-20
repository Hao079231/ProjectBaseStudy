package com.base.auth.config;

import io.lettuce.core.RedisClient;
import io.lettuce.core.api.StatefulRedisConnection;
import io.lettuce.core.api.sync.RedisCommands;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RedisConfig {
  @Value("${spring.redis.host}")
  private String host;

  @Value("${spring.redis.port}")
  private int port;

  @Bean(destroyMethod = "shutdown")
  public RedisClient redisClient() {
    return RedisClient.create("redis://" + host + ":" + port);
  }

  @Bean(destroyMethod = "close")
  public StatefulRedisConnection<String, String> redisConnection(RedisClient client) {
    return client.connect();
  }

  @Bean
  public RedisCommands<String, String> redisCommands(StatefulRedisConnection<String, String> connection) {
    return connection.sync();
  }
}
