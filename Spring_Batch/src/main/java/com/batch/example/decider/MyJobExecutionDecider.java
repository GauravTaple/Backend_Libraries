package com.batch.example.decider;

import org.springframework.batch.core.JobExecution;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.job.flow.FlowExecutionStatus;
import org.springframework.batch.core.job.flow.JobExecutionDecider;

public class MyJobExecutionDecider implements JobExecutionDecider {

	@Override
	public FlowExecutionStatus decide(JobExecution jobExecution, StepExecution stepExecution) {
		if(stepExecution.getExecutionContext().containsKey("step2 executed")) {
			System.out.println("1st condition");
			return new FlowExecutionStatus("CONTINUE");
		}else {
			System.out.println("else condition");
			return new FlowExecutionStatus("STOP");
		}
	}


}
