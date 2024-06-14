package com.batch.example.config;

import javax.sql.DataSource;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.job.flow.JobExecutionDecider;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.item.ItemProcessor;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.batch.repeat.RepeatStatus;
import org.springframework.batch.support.transaction.ResourcelessTransactionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.batch.example.decider.MyJobExecutionDecider;
import com.batch.example.model.Product;
import com.batch.example.processor.CustomItemProcessor;

@Configuration
public class DeciderConfig {
	
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
                .next(step2())                    // Sequential Flow
                .next(decider()).on("CONTINUE").to(step3())      // Conditional Flow
                .from(decider()).on("STOP").to(step4())
                .end()
                
//                .start(step1()).on("*").to(step2())                 
//                .start(step1()).on("COMPLETED").to(step2())       // Conditional Flow
//                .start(step1()).on("FAILED").to(step2()).end() 
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
              .build();
  }
  
  @Bean
  public Step step2() {
	  return new StepBuilder("step2",jobRepository)
			  .tasklet((contribution,chunkContext) -> {
				  chunkContext.getStepContext().getStepExecution().getExecutionContext().put("step2 executed", true);
				  System.out.println("Executing step 2...!!!");
				  return RepeatStatus.FINISHED;
			  },new ResourcelessTransactionManager())
			  .build();
}
  
  @Bean
  public Step step3() {
	  return new StepBuilder("step3",jobRepository)
			  .tasklet((contribution,chunkContext) -> {
				  chunkContext.getStepContext().getStepExecution().getExecutionContext().put("step3 executed", true);
				  System.out.println("Executing step 3...!!!");
				  return RepeatStatus.FINISHED;
			  },new ResourcelessTransactionManager())
			  .build();
}
  
  @Bean
  public Step step4() {
	  return new StepBuilder("step4",jobRepository)	
			  .tasklet((contribution,chunkContext) -> {
				  System.out.println("Executing step 4...!!!");
				  return RepeatStatus.FINISHED;
			  },new ResourcelessTransactionManager())
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
    
// For failed purpose 
//  @Bean
//  public ItemReader<Product> reader() {
//      return new ItemReader<Product>() {
//          private int count = 0;
//
//          @Override
//          public Product read() throws Exception {
//              if (count == 10) { // Fail on the 10th item for demonstration
//                  throw new RuntimeException("Intentional failure to demonstrate step failure.");
//              }
//              count++;
//              return new Product(); // Replace with actual product reading logic
//          }
//      };
//  }
  
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
    
// ---------------------------------Decider---------------------------------------------------
    @Bean
    public JobExecutionDecider decider() {
    	return new MyJobExecutionDecider();
    }
}
