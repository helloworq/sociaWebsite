package com.example.testspringboot.demo;

import com.example.testspringboot.dao.ZhihudownloadinfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Hello {
    //由于springboot采用全注解配置，所以没有传统的applicationcontext配置文件去获取mapper的bean
    //但可以直接自动注入获取mapper接口的bean
    @Autowired
    ZhihudownloadinfoMapper mapper;
    //如果添加了热部署配置可能会导致无法映射到相应的JSP文件，此时需要从maven里
    //点击spring-boot run 方可启动项目
    @RequestMapping(value = "/hello")
    public String hello(Model model) throws ServletException {
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "main";
    }

    @RequestMapping(value = "/friendsMoments")
    public String layui(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "friendsMoments";
    }

    @RequestMapping(value = "/login")
    public String normalUserPage(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "login";
    }

    @RequestMapping(value = "/test")
    public String test(Model model, HttpServletRequest httpRequeste,
                        HttpServletResponse httpResponse) throws Exception{
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        String userAge=getCookie(cookies,"userAge");
        if (userName==null)
            httpResponse.addCookie(new Cookie("userName","zhoudashuai1"));
        if(userAge==null)
            httpResponse.addCookie(new Cookie("userAge","22"));
        System.out.println(userName+userAge);
        return "login";
    }

    String getCookie(Cookie[] cookies,String key){
        if (cookies!=null){
            for (Cookie cookie:cookies) {
                if (cookie.getName().equals(key)){
                    return cookie.getValue();
                }
            }
        }
        return null;
    }

    @RequestMapping(value = "/personalPage")
    public String personalPage(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "personalPage";
    }

    @RequestMapping(value = "/myFriends")
    public String myFriends(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "myFriends";
    }

    @RequestMapping(value = "/writeMoment")
    public String writeMoment(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "writeMoment";
    }

    @RequestMapping(value = "/myInfo")
    public String myInfo(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "myInfo";
    }

    @RequestMapping(value = "/myCollect")
    public String myCollect(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "myCollect";
    }

    @RequestMapping(value = "/userCommentPage")
    public String userCommentPage(Model model){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        System.out.println("到了");
        return "userCommentPage";
    }
}