package com.batch.example.config;

import java.io.IOException;
import java.util.Collections;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.launch.support.RunIdIncrementer;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.extensions.excel.RowMapper;
import org.springframework.batch.extensions.excel.mapping.BeanWrapperRowMapper;
import org.springframework.batch.extensions.excel.poi.PoiItemReader;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.data.RepositoryItemWriter;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.LineMapper;
import org.springframework.batch.item.file.MultiResourceItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.item.file.mapping.BeanWrapperFieldSetMapper;
import org.springframework.batch.item.file.mapping.DefaultLineMapper;
import org.springframework.batch.item.file.transform.DelimitedLineTokenizer;
import org.springframework.batch.item.support.CompositeItemWriter;
import org.springframework.batch.item.support.builder.CompositeItemWriterBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.transaction.PlatformTransactionManager;

import com.batch.example.entity.BookEntity1;
import com.batch.example.entity.Emails;
import com.batch.example.processor.CustomProcessor;
import com.batch.example.processor.EmailProcessor;
import com.batch.example.repository.BookRepository;
import com.batch.example.repository.EmailRepository;

@Configuration
public class ExcelConfig {
	
	@Autowired
	private BookRepository bookRepository;
	
	@Autowired
	private EmailRepository emailRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
	@Autowired
	private PlatformTransactionManager transactionManager;
	
//	@Autowired
//	private JobCompletionNotificationListener listener;
	
	@Bean
	public Job bookJob() {
		return new JobBuilder("bookJob",jobRepository)
				.incrementer(new RunIdIncrementer())
//				.listener(listener)      // using listener also we can send the email
				.start(excelToDbStep())
				.next(emailSenderStep())
				.build();
	}

// -------------------------- Read excel to database ------------------------------------------
	@Bean
	public Step excelToDbStep() {
		try {
			return new StepBuilder("bookStep",jobRepository)
					.<BookEntity1,BookEntity1>chunk(5,transactionManager)
					.reader(multiResourceItemReader())
					.processor(itemProcessor())
					.writer(itemWriter())
					.build();
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	@Bean
    public MultiResourceItemReader<BookEntity1> multiResourceItemReader() throws IOException {
        MultiResourceItemReader<BookEntity1> resourceItemReader = new MultiResourceItemReader<BookEntity1>();
        ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
        Resource[] resources = resolver.getResources("NOTICE DCA 90 DYS.xls");
        resourceItemReader.setResources(resources);
        resourceItemReader.setDelegate(excelItemReader());
        return resourceItemReader;
    }
	
	 @Bean
	 public PoiItemReader<BookEntity1> excelItemReader() {
	        PoiItemReader<BookEntity1> reader = new PoiItemReader<>();
	        reader.setResource(new FileSystemResource("NOTICE DCA 90 DYS.xls"));
	        reader.setRowMapper(excelRowMapper());
	        reader.setLinesToSkip(1);
	        reader.setStrict(false);
	        return reader;
	    }
	

	private RowMapper<BookEntity1> excelRowMapper() {
        BeanWrapperRowMapper<BookEntity1> rowMapper = new BeanWrapperRowMapper<>();
        rowMapper.setTargetType(BookEntity1.class);
        return rowMapper;
    }
	
	@Bean
	public ItemProcessor<BookEntity1, BookEntity1> itemProcessor(){
		return new CustomProcessor();
	}	
	
    @Bean
    public RepositoryItemWriter<BookEntity1> itemWriter(){
        RepositoryItemWriter<BookEntity1> itemWriter = new RepositoryItemWriter<>();
        itemWriter.setRepository(bookRepository);
        itemWriter.setMethodName("save");
        return itemWriter;
    }

// -------------Email Sending Step-----------------------------------------------
	@Bean
	public Step emailSenderStep() {
		return new StepBuilder("emailSenderStep", jobRepository)
				.<Emails,Emails>chunk(0,transactionManager)
				.reader(txtFileReader())
				.processor(emailProcessor())
				.writer(writerEmail())
				.build();
	}
	
	@Bean
	public FlatFileItemReader<Emails> txtFileReader() {
		return new FlatFileItemReaderBuilder<Emails>()
				.name("emailReader")
				.resource(new FileSystemResource("src/main/resources/bookMail.txt"))
				.lineMapper(lineMapper())
				.linesToSkip(1)
				.build();

	}	
	
	@Bean	
	public LineMapper<Emails> lineMapper() {
		DefaultLineMapper<Emails> lineMapper = new DefaultLineMapper<>();
		
		DelimitedLineTokenizer lineTokenizer = new DelimitedLineTokenizer();
		lineTokenizer.setDelimiter(",");
		lineTokenizer.setNames("id", "email", "name");
		
		BeanWrapperFieldSetMapper<Emails> fieldSetMapper = new BeanWrapperFieldSetMapper<>();
		fieldSetMapper.setTargetType(Emails.class);
		lineMapper.setFieldSetMapper(fieldSetMapper);
		lineMapper.setLineTokenizer(lineTokenizer);
		return lineMapper;
	} 
	
	@Bean
	public ItemProcessor<Emails, Emails> emailProcessor(){
		return new EmailProcessor();
	}	
	
//	@Bean
//    public RepositoryItemWriter<Emails> writerEmail(){
//        RepositoryItemWriter<Emails> itemWriter = new RepositoryItemWriter<>();
//        itemWriter.setRepository(emailRepository);
//        itemWriter.setMethodName("save");
//        return itemWriter;
//    }
	
	   @Bean
	    public CompositeItemWriter<Emails> writerEmail() {
	        return new CompositeItemWriterBuilder<Emails>()
	                .delegates(Collections.singletonList(System.out::println))  // Replace with actual writers as needed
	                .build();
	    }
	
// ------------------------------------------------------------------------------------------
	
	

}
