package com.reldyn.spring_kafka.config;

import org.apache.kafka.clients.admin.NewTopic;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.kafka.config.TopicBuilder;

@Configuration
public class KafkaTopicConfig {
	
	@Bean
	public NewTopic MyFirstTopic() {
		return 	TopicBuilder.name("gauravtopic")
				.build();
	}
	
	@Bean
	public NewTopic MyFirstJsonTopic() {
		return 	TopicBuilder.name("gauravtopicjson")
				.build();
	}

}
