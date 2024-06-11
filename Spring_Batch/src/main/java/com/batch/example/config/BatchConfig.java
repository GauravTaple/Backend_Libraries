package com.batch.example.config;

import javax.sql.DataSource;

import org.springframework.batch.core.Job;
import org.springframework.batch.core.Step;
import org.springframework.batch.core.job.builder.JobBuilder;
import org.springframework.batch.core.repository.JobRepository;
import org.springframework.batch.core.step.builder.StepBuilder;
import org.springframework.batch.item.ItemWriter;
import org.springframework.batch.item.database.builder.JdbcBatchItemWriterBuilder;
import org.springframework.batch.item.file.FlatFileItemReader;
import org.springframework.batch.item.file.builder.FlatFileItemReaderBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.batch.example.model.Product;


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
                .start(Step())
                .build();
    }
    
// ---------------------------------Step---------------------------------------------------
  @Bean
  public Step Step() {
      return new StepBuilder("jobStep", jobRepository)
              .<Product,Product>chunk(50, transactionManager)
              .reader(reader())
//            .processor(processor())
              .writer(itemWriter())
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
//    @Bean
//    public ItemProcessor<Product, Product> itemProcessor() {
//        return new CustomItemProcessor();
//    }	

    
    
// ---------------------------------Writer---------------------------------------------------
    @Bean
    public ItemWriter<Product> itemWriter() {
        return new JdbcBatchItemWriterBuilder<Product>()
                .sql("insert into products(product_id,title,description,price,discount)values(:productId, :title, :description, :price, :discount)")
                .dataSource(dataSource)
                .beanMapped()
                .build();

    }
    

    
}
