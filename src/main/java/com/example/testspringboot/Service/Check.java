package com.example.testspringboot.Service;
import com.example.testspringboot.dao.LogindataMapper;
import com.example.testspringboot.entiy.Logindata;
import org.apache.tomcat.util.security.MD5Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/controller")
public class Check {
    @Autowired
    LogindataMapper logindataMapper;

    @ResponseBody
    @RequestMapping(value = "/loginCheck",method = RequestMethod.POST)
    public Map<String,Object> loginCheck
            (@RequestParam(value = "inputAccount",required = false) String inputAccount,
             @RequestParam(value = "inputPassword",required = false) String inputPassword,
             @RequestParam(value = "inputCaptcha",required = false) String inputCaptcha,
             HttpServletRequest httpRequeste,
             HttpServletResponse httpResponse){
        System.out.println("开始检测");
        System.out.println(inputAccount+";"+inputPassword+";"+inputCaptcha);
        Map<String,Object> map=new HashMap<>();
        System.out.println(GenerateCaptcha.getGeneratedString());
        if(!inputCaptcha.equals(GenerateCaptcha.getGeneratedString())){
            map.put("msg","验证码错误");
            return map;
        }
        else {
            //map.put("msg", "success");
            /**
             * 验证码验证完成后开始验证输入的账号与密码是否匹配
             * 假如账号密码验证码全部验证成功则跳转进主页面，并且加入cookie值用来根据用户名拉取数据
             */
            System.out.println(inputPassword+logindataMapper.selectPasswordByAccount(inputAccount));
            if (inputPassword.equals(logindataMapper.selectPasswordByAccount(inputAccount))){
                System.out.println("验证成功");
                map.put("msg", "success");
                //三项验证成功后返回给浏览器对应的cookie值
                Cookie[] cookies=httpRequeste.getCookies();
                String userName=getCookie(cookies,"userName");
                if (userName==null)
                    httpResponse.addCookie(new Cookie("userName",inputAccount));
                return map;
            }
            else {
                System.out.println("验证失败");
                map.put("msg", "fail");
                return map;
            }
        }
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
}
