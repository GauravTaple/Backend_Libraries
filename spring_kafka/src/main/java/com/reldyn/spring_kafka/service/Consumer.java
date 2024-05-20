package com.reldyn.spring_kafka.service;


import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class Consumer {
	
	@KafkaListener(topics = "gauravtopic",groupId = "myGroup")
	public void consume(String message) {
		System.out.println("message Received ->"+message);
	}

}
