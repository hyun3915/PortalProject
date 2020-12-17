package com.project.portal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
public class PotalProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(PotalProjectApplication.class, args);
	}

}
