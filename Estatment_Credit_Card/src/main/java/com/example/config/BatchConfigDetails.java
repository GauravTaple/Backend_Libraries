package com.example.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.item.data.RepositoryItemWriter;
import org.springframework.batch.item.data.builder.RepositoryItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.batch.item.file.transform.Range;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.transaction.PlatformTransactionManager;

import com.example.model.TransactionDetails;
import com.example.repository.TransactionDetailsRepository;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class BatchConfigDetails {

	@Autowired
	private JobRepository jobRepository;

	@Autowired
	private PlatformTransactionManager transactionManager;

//	@Autowired
//	private JobCompletionNotificationImpl listener;

	@Autowired
	private TransactionDetailsRepository transactionDetailsRepository;

// ---------------------------------Job---------------------------------------------------
	@Bean
	public Job jobBean() {
		return new JobBuilder("job", jobRepository)
//                .listener(listener)
				.incrementer(new RunIdIncrementer())
				.start(step())
				.build();
	}

// ---------------------------------Step---------------------------------------------------
	@Bean
	public Step step() {
		return new StepBuilder("jobStep", jobRepository)
				.<TransactionDetails, TransactionDetails>chunk(10, transactionManager)
				.reader(reader())
//                .processor(processor())
				.writer(writer())
				.build();
	}

// ---------------------------------Reader---------------------------------------------------
  @Bean
  public FlatFileItemReader<TransactionDetails> reader() {
      return new FlatFileItemReaderBuilder<TransactionDetails>()
          .name("TransactionItemReader")
          .resource(new ClassPathResource("S "))
          .strict(false)
          .fixedLength()
          .columns(new Range[] {  new Range(1, 5), new Range(6, 9), new Range(10, 12), new Range(13, 31), 
      	        new Range(32, 34), new Range(35, 41), new Range(42, 48), new Range(49, 51), 
    	        new Range(52, 111), new Range(112, 126), new Range(127, 127), new Range(128, 130), 
    	        new Range(131, 149), new Range(150, 168), new Range(169, 175), new Range(176, 182), 
    	        new Range(183, 197), new Range(198, 198), new Range(199, 201), new Range(202, 216), 
    	        new Range(217, 217), new Range(218, 232), new Range(233, 233), new Range(234, 248), 
    	        new Range(249, 249), new Range(250, 264), new Range(265, 265), new Range(266, 280), 
    	        new Range(281, 281), new Range(282, 296), new Range(297, 297), new Range(298, 320), 
    	        new Range(321, 335), new Range(336, 346), new Range(347, 354), new Range(355, 362), 
    	        new Range(363, 365), new Range(366, 368), new Range(369, 394), new Range(395, 401), 
    	        new Range(402, 426), new Range(427, 429), new Range(430, 455), new Range(456, 456), 
    	        new Range(457, 457), new Range(458, 463), new Range(464, 488), new Range(489, 489), 
    	        new Range(490, 549), new Range(550, 689), new Range(690, 829), new Range(830, 969), 
    	        new Range(970, 983) })
          .names(new String[] {  "statementNo", "sequenceNo", "lineSeqNo", "textLetterKey", "stmtRecordType", 
      	        "entryDate", "transactionDate", "formType", "text", "transAmount", 
    	        "defaultSign1", "currencyCode", "cardNumber", "customerNumber", 
    	        "processingDate", "latestDueDate", "amountDue", "defaultSign2", 
    	        "transactionCodeGroup", "balanceBroughtForward", "defaultSign3", 
    	        "debitAmount", "defaultSign4", "creditAmount", "defaultSign5", 
    	        "totalPftChargeAmount", "defaultSign6", "balanceCarriedForward", 
    	        "defaultSign7", "capitalisedProfit", "defaultSign8", 
    	        "acquirerReferenceNumber", "ficheReference", "merchantId", "terminalId", 
    	        "terminalBatchNo", "lineSpaceBefore", "lineSpaceAfter", "embossingName", 
    	        "postCode", "city", "countryCode", "secondEmbossingName", "pickUpCode", 
    	        "multiCurrency", "productId", "description", "productType", "emailAddress", 
    	        "senderName", "recipientReference", "otherPaymentDetails", "dateTime" })
          .fieldSetMapper(new BeanWrapperFieldSetMapper<>() {{
              setTargetType(TransactionDetails.class);
          }})	
          .build();
  }
  
////---------------------------------Processor---------------------------------------------------
//  @Bean
//  public CustomProcessor processor() {
//	return new CustomProcessor();
//
// }
  
//---------------------------------Writer---------------------------------------------------
  @Bean
	public RepositoryItemWriter<TransactionDetails> writer() {
		return new RepositoryItemWriterBuilder<TransactionDetails>()
				.methodName("save")
				.repository(transactionDetailsRepository)
				.build();
	}

}
