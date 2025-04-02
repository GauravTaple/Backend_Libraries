package com.localstack;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;

@Configuration
public class AppConfiguration {

	@Bean
	public AmazonS3 getAmazonS3() {
		String sqsEndpoint = "https://localhost.localstack.cloud:4566";

		AmazonS3 s3 = AmazonS3ClientBuilder.standard()
				.withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(sqsEndpoint, "us-east-1"))
				.withCredentials(new AWSStaticCredentialsProvider(awsCredentials())).withPathStyleAccessEnabled(true)
				.build();
		return s3;
	}

	public AWSCredentials awsCredentials() {						
		return new BasicAWSCredentials("test", "test");

	}

}
