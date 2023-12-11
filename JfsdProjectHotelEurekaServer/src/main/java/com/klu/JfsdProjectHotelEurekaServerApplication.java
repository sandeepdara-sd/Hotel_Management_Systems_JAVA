package com.klu;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class JfsdProjectHotelEurekaServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(JfsdProjectHotelEurekaServerApplication.class, args);
		System.out.println("Eureka server is running...!!");
	}

}
