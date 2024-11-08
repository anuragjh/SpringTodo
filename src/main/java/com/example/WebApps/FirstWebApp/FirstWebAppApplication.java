package com.example.WebApps.FirstWebApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@SpringBootApplication
public class FirstWebAppApplication {
	public static void main(String[] args) {
		SpringApplication.run(FirstWebAppApplication.class, args);
	}
}