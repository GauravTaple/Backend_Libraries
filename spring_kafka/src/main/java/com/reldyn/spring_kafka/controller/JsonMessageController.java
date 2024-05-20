package com.reldyn.spring_kafka.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reldyn.spring_kafka.model.User;
import com.reldyn.spring_kafka.service.JsonKafkaProducer;

@RestController
@RequestMapping("/api/v1/kafka")
public class JsonMessageController {
	
	@Autowired
	private JsonKafkaProducer jsonKafkaProducer; 
	
	
	// http://localhost:8080/api/v1/kafka/publishjson
	@PostMapping("/publishjson")
	public ResponseEntity<String> publishJsonMessage(@RequestBody User user){
		jsonKafkaProducer.sendJsonMessage(user);
		return ResponseEntity.ok("Json message sent to kafka topic...!!!");
	}

}
