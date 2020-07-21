package com.example.testspringboot.demo;


import org.springframework.stereotype.Service;

@Service("xxx")
public class ServiceTestimpl implements ServiceTest{

    @Override
    public String printSuccess(){
        return "hello";
    }
}
