package com.reldyn.spring_kafka.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import com.reldyn.spring_kafka.model.User;

@Service
public class JsonKafkaConsumer {
	
	private static final Logger logger=LoggerFactory.getLogger(JsonKafkaConsumer.class);
	
	@KafkaListener(topics = "gauravtopicjson",groupId = "myGroup")
	public void consumeJson(User user) {
//		System.out.println("json message received by ->"+user);
		
		logger.info("json message received by ->"+user);
	}

}
