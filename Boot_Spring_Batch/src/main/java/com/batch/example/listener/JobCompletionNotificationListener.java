package com.batch.example.listener;

import java.util.Arrays;
import java.util.List;

import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.JobExecutionListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.batch.example.service.EmailService;

import jakarta.mail.MessagingException;

@Component
public class JobCompletionNotificationListener implements JobExecutionListener {
	
	@Autowired
    private EmailService emailService;
	
	@Override
    public void beforeJob(JobExecution jobExecution) {
       System.out.println("Job just started...!!!");
    }
	
	@Override
    public void afterJob(JobExecution jobExecution) {
        if (jobExecution.getStatus().isUnsuccessful()) {
            return;
        }

        try {
        	// For multiple email purpose
        	 List<String> recipients = Arrays.asList(
        	            "gtaple9767@gmail.com",
        	            "shubhamsakhare108@gmail.com"
        	        );
            emailService.sendEmailWithAttachment(
            		recipients,
                "Estatement Pdf",
                "Pdf send successfully. Please find the attached PDF.",
                "BIC_REMINDER.pdf"
            );
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
														