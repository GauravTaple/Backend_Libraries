package com.reldyn.spring_kafka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.reldyn.spring_kafka.service.Producer;

@RestController
@RequestMapping("/api/v1/kafka")
public class MessageController {
	
	@Autowired
	private Producer producer;
	
	
	// http:localhost:8080/api/v1/kafka/publish?message=Hello in this world
	@GetMapping("/publish")
	public ResponseEntity<String> publishMsg(@RequestParam("message") String message){
		producer.sendMessage(message);
		return ResponseEntity.ok("Message sent to the topic successfully...!!!");
	}
}