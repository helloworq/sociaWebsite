package com.example.testspringboot.demo;

import com.example.testspringboot.dao.ZhihudownloadinfoMapper;
import com.example.testspringboot.entiy.Zhihudownloadinfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Hello {
    //由于springboot采用全注解配置，所以没有传统的applicationcontext配置文件去获取mapper的bean
    //但可以直接自动注入获取mapper接口的bean
    @Autowired
    ZhihudownloadinfoMapper mapper;
    //如果添加了热部署配置可能会导致无法映射到相应的JSP文件，此时需要从maven里
    //点击spring-boot run 方可启动项目
    @RequestMapping(value = "/hello")
    public String hello(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "main";
    }
}
