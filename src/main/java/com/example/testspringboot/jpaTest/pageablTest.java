package com.example.testspringboot.jpaTest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class pageablTest {
    @Autowired
    UserRepository userRepository;
    @ResponseBody
    @RequestMapping("getpageinfo")
    public List<UserEnity> getPageInfo(){
        PageRequest pageRequest= PageRequest.of(0,5);
        List<UserEnity> list=userRepository.findByEmail("666@qq.com",pageRequest);
        return list;
    }
}
