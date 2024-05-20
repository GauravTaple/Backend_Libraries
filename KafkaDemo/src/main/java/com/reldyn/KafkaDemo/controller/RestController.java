package com.reldyn.KafkaDemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.reldyn.KafkaDemo.service.Producer;

@org.springframework.web.bind.annotation.RestController
@RequestMapping("/rest/api")
public class RestController {
	
	@Autowired
	Producer producer;
	
	@GetMapping("/produce")
	public void getMessageFromClient(@RequestParam("message") String message)
	{
		producer.sendMsgToTopic(message);
		
	}

}
