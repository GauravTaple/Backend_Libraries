package com.batch.example.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.JobParametersBuilder;
import org.springframework.batch.core.launch.JobLauncher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import lombok.extern.slf4j.Slf4j;

@Configuration
@EnableScheduling
@Slf4j
public class SchedulerConfig {
	
	@Autowired
	private JobLauncher jobLauncher;
		
	@Autowired
	private Job job;
	
	@Scheduled(fixedDelay =5000,initialDelay = 5000)
	public void scheduleJob() throws Exception {
		log.info("Job Scheduler Started...!!!");
		jobLauncher.run(job, new JobParametersBuilder().addLong("Uniqueness", System.nanoTime()).toJobParameters());
		log.info("Job Scheduler Finished...!!!");
		
	}
	

}
