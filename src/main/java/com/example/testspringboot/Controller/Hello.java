package com.example.testspringboot.Controller;

import com.example.testspringboot.dao.ZhihudownloadinfoMapper;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.pdfbox.text.PDFTextStripper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.*;

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
        return "hello";
    }

    @RequestMapping(value = "/friendsMoments")
    public String layui(Model model,HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        //登录鉴权
        //获取用户名
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "friendsMoments";
    }

    @RequestMapping(value = "/login")
    public String normalUserPage(Model model,HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
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
    public String personalPage(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "personalPage";
    }

    @RequestMapping(value = "/myFriends")
    public String myFriends(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "myFriends";
    }

    @RequestMapping(value = "/writeMoment")
    public String writeMoment(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "writeMoment";
    }

    @RequestMapping(value = "/myInfo")
    public String myInfo(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "myInfo";
    }

    @RequestMapping(value = "/myCollect")
    public String myCollect(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "myCollect";
    }

    @RequestMapping(value = "/userCommentPage")
    public String userCommentPage(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "userCommentPage";
    }

    @RequestMapping(value = "userPage")
    public String userPage(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "userPage";
    }


    @RequestMapping(value = "findFriends")
    public String findFriends(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "findFriends";
    }

    /**
     * 最后加一个留言功能
     * @param model
     * @return
     */
    @RequestMapping(value = "userMessage")
    public String userMessage(Model model, HttpServletRequest httpRequeste){
        // 加载spring配置文件
        //List<Zhihudownloadinfo> list=mapper.selectAll();
        //model.addAttribute("data",list);
        Cookie[] cookies=httpRequeste.getCookies();
        if (getCookie(cookies,"userName")==null)
            return null;
        System.out.println("到了");
        return "userMessage";
    }

    @RequestMapping("/exchange")
    public void exchange(){

    }
}