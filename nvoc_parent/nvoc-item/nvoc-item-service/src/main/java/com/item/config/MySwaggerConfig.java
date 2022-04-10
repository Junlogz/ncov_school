package com.item.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;

@Configuration
@EnableSwagger2
public class MySwaggerConfig {
    @Bean
    public Docket docket(){
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .groupName("nvoc_school");
    }

    public ApiInfo apiInfo(){
        return new ApiInfo(
                "校园疫情管理系统",
                "校园疫情管理系统可用于管理师生打卡、申请外出、以及师生信息管理",
                "V1.0",
                "",
                new Contact("没有名字的小组","",""),
                "",
                "",
                new ArrayList<>()
        );
    }
}
