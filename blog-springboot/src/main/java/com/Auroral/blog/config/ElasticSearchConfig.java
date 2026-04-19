package com.Auroral.blog.config;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.util.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.elasticsearch.client.ClientConfiguration;
import org.springframework.data.elasticsearch.client.RestClients;

import java.time.Duration;

/**
 * elasticsearch配置类
 *
 * @author: Auroral
 * @date: 2020-12-26
 **/
@Configuration
public class ElasticSearchConfig {
    @Value("${elasticsearch.host}")
    private String host;

    @Value("${elasticsearch.port}")
    private String port;

    @Value("${elasticsearch.username}")
    private String username;

    @Value("${elasticsearch.password}")
    private String password;

    @Bean
    public RestHighLevelClient client() {
        ClientConfiguration clientConfiguration;
        if (StringUtils.hasText(username)) {
            clientConfiguration = ClientConfiguration.builder()
                    .connectedTo(host + ":" + port)
                    .withBasicAuth(username, password)
                    .withConnectTimeout(Duration.ofSeconds(5))
                    .withSocketTimeout(Duration.ofSeconds(3))
                    .build();
        } else {
            clientConfiguration = ClientConfiguration.builder()
                    .connectedTo(host + ":" + port)
                    .withConnectTimeout(Duration.ofSeconds(5))
                    .withSocketTimeout(Duration.ofSeconds(3))
                    .build();
        }
        return RestClients.create(clientConfiguration).rest();
    }

}
