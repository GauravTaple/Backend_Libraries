package com.reldyn.spring_kafka.service;

import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Service;

@Service
public class Producer {
	
	private KafkaTemplate<String , String> kafkaTemplate;

	public Producer(KafkaTemplate<String, String> kafkaTemplate) {
		super();
		this.kafkaTemplate = kafkaTemplate;
	}

	public void sendMessage(String message) {
//		System.out.println("Message sent is:-"+message);
		kafkaTemplate.send("gauravtopic", message);
	}
}
