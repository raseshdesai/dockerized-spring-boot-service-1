package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class SpringBootService1Application {

    @RequestMapping("/")
    public String greet() {
        return "[Service 1]: 'Hello Java, Spring Boot & Docker - v5'";
    }

    public static void main(String[] args) {
        SpringApplication.run(SpringBootService1Application.class, args);
    }
}
