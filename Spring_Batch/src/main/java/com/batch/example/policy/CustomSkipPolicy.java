package com.batch.example.policy;

import org.springframework.batch.core.step.skip.SkipLimitExceededException;
import org.springframework.batch.core.step.skip.SkipPolicy;
import org.springframework.batch.item.file.FlatFileParseException;

public class CustomSkipPolicy implements SkipPolicy {

	@Override
	public boolean shouldSkip(Throwable throwable, long skipCount) throws SkipLimitExceededException {
		return throwable instanceof FlatFileParseException;
	}

}
