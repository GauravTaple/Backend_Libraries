package com.batch.example.config;

import javax.sql.DataSource;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.SkipListener;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.core.step.skip.SkipPolicy;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.task.SimpleAsyncTaskExecutor;
import org.springframework.core.task.TaskExecutor;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.batch.example.listener.CustomSkipListener;
import com.batch.example.listener.JobCompletionNotificationImpl;
import com.batch.example.model.Product;
import com.batch.example.policy.CustomSkipPolicy;
import com.batch.example.processor.CustomItemProcessor;


@Configuration
public class BatchConfig {
	
	@Autowired
	private JobRepository jobRepository;
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Autowired
	private JobCompletionNotificationImpl listener;
	
	@Autowired
	private DataSource dataSource;
	
// ---------------------------------Job---------------------------------------------------
    @Bean
    public Job jobBean() {
        return new JobBuilder("job", jobRepository)
                .listener(listener)
                .start(step1())
                .build();
    }
    
// ---------------------------------Step---------------------------------------------------
  @Bean
  public Step step1() {
      return new StepBuilder("step1", jobRepository)
              .<Product,Product>chunk(50, transactionManager)
              .reader(reader())
              .processor(processor())
              .writer(writer())
//              .taskExecutor(taskExecutor())      // It is used for parallel(concurrent) execution purpose
              .faultTolerant()                     // It is used for skip any wrong data in reader file purpose
//              .skip(NumberFormatException.class)
//              .skipLimit(2)
//              .noSkip(NumberFormatException.class)
              .listener(skipListener())       // custom listener to listen any skip policy triggered
              .skipPolicy(skipPolicy())
              .build();
  }
    	
// ---------------------------------Reader---------------------------------------------------
    @Bean
    public FlatFileItemReader<Product> reader() {
        return new FlatFileItemReaderBuilder<Product>()
                .name("itemReader")
                .resource(new ClassPathResource("data.csv"))
                .linesToSkip(1)
                .delimited()
                .names("productId", "title", "description", "price", "discount")
                .targetType(Product.class)
                .build();
    }
  
// ---------------------------------Processor---------------------------------------------------
    @Bean
    public ItemProcessor<Product, Product> processor() {
        return new CustomItemProcessor();
    }	

    	
    
// ---------------------------------Writer---------------------------------------------------
    @Bean
    public ItemWriter<Product> writer() {
        return new JdbcBatchItemWriterBuilder<Product>()
                .sql("insert into products(product_id,title,description,price,discount,discountPrice)values(:productId, :title, :description, :price, :discount, :discountPrice)")
                .dataSource(dataSource)
                .beanMapped()
                .build();

    }		
 
// ---------------------------------TaskExecutor---------------------------------------------------
    @Bean
    public TaskExecutor taskExecutor() {
    	SimpleAsyncTaskExecutor asyncTaskExecutor = new SimpleAsyncTaskExecutor();
    	asyncTaskExecutor.setConcurrencyLimit(-1);   // Unlimited tasks executed
//    	asyncTaskExecutor.setConcurrencyLimit(10);   // Only 10 tasks can run concurrently
//    	asyncTaskExecutor.setConcurrencyLimit(0);    // No tasks will be executed
    	return asyncTaskExecutor;
    	
    }
    
// ---------------------------------SkipListener---------------------------------------------------
    @Bean
    public SkipListener skipListener() {
    	return new CustomSkipListener();
    }

// ---------------------------------SkipPolicy---------------------------------------------------
    @Bean
    public SkipPolicy skipPolicy() {
    	return new CustomSkipPolicy();
    }
}
