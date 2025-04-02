package com.example.config;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.extensions.excel.mapping.BeanWrapperRowMapper;
import org.springframework.batch.extensions.excel.poi.PoiItemReader;
import org.springframework.batch.item.ItemReader;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.data.builder.RepositoryItemWriterBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.task.SimpleAsyncTaskExecutor;
import org.springframework.core.task.TaskExecutor;
import org.springframework.transaction.PlatformTransactionManager;

import com.example.listener.JobCompletionNotificationImpl;
import com.example.model.Product;
import com.example.repository.ProductRepository;

@Configuration
public class BatchConfig {
	
	@Autowired
	private JobRepository jobRepository;
	
//	@Autowired
//	private DataSourceTransactionManager transactionManager;
	
	@Autowired
	private PlatformTransactionManager transactionManager;
	
	@Autowired
	private JobCompletionNotificationImpl listener;
	
//	@Autowired
//	private DataSource dataSource;
	
	@Autowired
	private ProductRepository productRepository;
	
	// ---------------------------------Job---------------------------------------------------
    @Bean
    public Job jobBean() {
    	//JobRepository is the heart of Spring Batch's state management, tracking the progress and status of batch jobs.
        return new JobBuilder("job", jobRepository) 
                .listener(listener)
                .start(Step())
                .build();
    }
    
// ---------------------------------Step---------------------------------------------------
  @Bean
  public Step Step() {
      return new StepBuilder("jobStep", jobRepository)
              .<Product,Product>chunk(2, transactionManager)
              .reader(reader())
//            .processor(itemProcessor())
              .writer(itemWriter())
              .taskExecutor(taskExecutor())
              .build();
  }
  
//---------------------------------Reader---------------------------------------------------
 @Bean
 public ItemReader<Product> reader() {
     PoiItemReader<Product> reader = new PoiItemReader<>();
     reader.setResource(new ClassPathResource("statement.xls"));
     reader.setRowMapper(rowMapper());
     reader.setLinesToSkip(1); // Skip the header row
     return reader;
 }
 
 @Bean
 public BeanWrapperRowMapper<Product> rowMapper() {
     BeanWrapperRowMapper<Product> rowMapper = new BeanWrapperRowMapper<>();
     rowMapper.setTargetType(Product.class);
     return rowMapper;
 }
 

//---------------------------------Processor---------------------------------------------------
//  @Bean
//  public ItemProcessor<Product, Product> itemProcessor() {
//      return new CustomItemProcessor();
//  }

  
  
//---------------------------------Writer---------------------------------------------------
  @Bean
  public ItemWriter<Product> itemWriter() {
      return new RepositoryItemWriterBuilder<Product>()
    		  .methodName("save")
    		  .repository(productRepository)
              .build();

  }
  
  // ---------------------------------TaskExecutor---------------------------------------------------
  @Bean
  public TaskExecutor taskExecutor() {
  	//SimpleAsyncTaskExecutor :- Creates a new thread for each task.
  	SimpleAsyncTaskExecutor asyncTaskExecutor = new SimpleAsyncTaskExecutor();
  	asyncTaskExecutor.setConcurrencyLimit(-1);
  	return asyncTaskExecutor;
  }
    

}
