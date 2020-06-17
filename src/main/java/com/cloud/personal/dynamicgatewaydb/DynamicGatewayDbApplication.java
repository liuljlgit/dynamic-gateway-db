package com.cloud.personal.dynamicgatewaydb;

import org.mybatis.spring.annotation.MapperScan;import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@SpringBootApplication
@EnableAspectJAutoProxy
@ComponentScan("com.cloud")
@MapperScan("com.cloud.**.dao")
public class DynamicGatewayDbApplication {

    public static void main(String[] args) {
        SpringApplication.run(DynamicGatewayDbApplication.class, args);
    }

}
