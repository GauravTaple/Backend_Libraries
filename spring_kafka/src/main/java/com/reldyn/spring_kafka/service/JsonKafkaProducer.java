package com.reldyn.spring_kafka.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.kafka.support.KafkaHeaders;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Service;

import com.reldyn.spring_kafka.model.User;

@Service
public class JsonKafkaProducer {
	
	private static final Logger logger=LoggerFactory.getLogger(JsonKafkaProducer.class);
	
	@Autowired
	private KafkaTemplate<String, User> kafkaTemplate;
	
	public void sendJsonMessage(User data) {
//		System.out.println("Message sent ->"+data.toString());
		
		logger.info("Message Sent ->"+data.toString());
		
		Message<User> message=MessageBuilder                //a builder for creating a Genericmessage
				.withPayload(data)                          //create new builder with payload
				.setHeader(KafkaHeaders.TOPIC, "gauravtopicjson")
				.build();
		
		kafkaTemplate.send(message);
	}

}
