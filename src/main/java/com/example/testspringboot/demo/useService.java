package com.example.testspringboot.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class useService {
    @Autowired
    ServiceTestimpl serviceTest;

    @RequestMapping("ServiceTestofMapping")
    public void printmsgt(){

        System.out.println(serviceTest.printSuccess());
    }
}
