package com.example.testspringboot.demo;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

@Service("xxx")
public class ServiceTestimpl implements ServiceTest{

    @Override
    public String printSuccess(){
        return "hello";
    }
}
