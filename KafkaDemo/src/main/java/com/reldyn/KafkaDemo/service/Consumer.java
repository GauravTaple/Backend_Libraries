package com.reldyn.KafkaDemo.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

@Service
public class Consumer {
	
	@KafkaListener(topics = "MyTopic",groupId = "MyGroup")
	public void listenToMsg(String receivedMessage) {
		System.out.println("Message is Received:"+receivedMessage);
	}
	


}
