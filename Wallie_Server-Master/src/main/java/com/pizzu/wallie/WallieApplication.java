package com.pizzu.wallie;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class WallieApplication {

	public static void main(String[] args) {
		SpringApplication.run(WallieApplication.class, args);
		System.out.println("WORKED");
	}

}
