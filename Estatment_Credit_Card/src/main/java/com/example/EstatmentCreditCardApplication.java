package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class EstatmentCreditCardApplication {
	
//	private TransactionDetailsRepository transactionDetailsRepository;

	public static void main(String[] args) {
		SpringApplication.run(EstatmentCreditCardApplication.class, args);
	}

//	@Override
//	public void run(String... args) throws Exception {
//        InputStream is = new FileInputStream("STMT3_SAMPLE.txt");
//        List<TransactionDetails> allRecords = new FixedLength<TransactionDetails>()
//                .registerLineType(TransactionDetails.class)
//                .parse(is);
//
//        ObjectMapper objectMapper = new ObjectMapper();
//        List<TransactionDetails> records = allRecords.stream().limit(2393).toList();
//        String json = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(records);
//        System.out.println(json + "json");
//
//        // Save all records to the database
//        transactionDetailsRepository.saveAll(records);
//    }

}
