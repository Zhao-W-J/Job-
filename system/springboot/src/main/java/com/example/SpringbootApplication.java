package com.example;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.example.mapper")
public class SpringbootApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootApplication.class, args);
        System.out.println("\n================================ 郑重声明 =================================");
        System.out.println("|                             本代码由赵伟健原创                             |");
        System.out.println("================================ 郑重声明 =================================");
    }

}
