package com.example.testspringboot.Controller;


import com.alibaba.fastjson.JSON;
import com.example.testspringboot.dao.*;
import com.example.testspringboot.entiy.*;
import org.apache.ibatis.annotations.Select;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.text.PDFTextStripper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/controller")
public class getInfo {
    @Autowired
    UserMomentsInfoMapper userMomentsInfoMapper;
    @Autowired
    CommentMapper commentMapper;
    /**
     * 接口。登录完成后从数据库中获取我的全部好友动态信息的接口
     * @param page
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/get_info_list_friendInfo",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_friendInfo(
            @RequestParam(value = "page",required = false) Integer page
            , HttpServletRequest httpRequeste) {
        //根据登录用户获取全部的好友动态
        System.out.println("有新请求进入"+page);
        //获取cookie值
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //根据获取到的用户名根据用户的社交关系获取数据库中对应好友的信息
        //先从user_relation表中获取用户所有的关注的好友，
        //然后从根据好友名字依次获取所有的好友动态
        HashMap res=new HashMap();
        //每次取钱15个结果当作一页，以page数值为分割
        page=((page-1)*15);
        ArrayList<UserMomentsInfo> list=userMomentsInfoMapper.selectFriendsInfoByfriendName(userName,page);
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        //如果pages数值大于整数例如(pages=2.1)必须将pages取为3
        double pages_unHandle=(double ) userMomentsInfoMapper.selectByfriendNameofCount(userName)/15;
        //System.out.println(pages_unHandle+"="+userMomentsInfoMapper.selectByfriendNameofCount(userName)+"="+userMomentsInfoMapper.selectByfriendNameofCount(userName)/15);
        //(int)pages_unHandle只可能比pages_unHandle小或者等于，所以使用三目运算符直接计算
        int pages=pages_unHandle>(int)pages_unHandle?(int)pages_unHandle+1:(int)pages_unHandle;
        res.put("pages",pages);
        res.put("username",userName);
        return res;
    }

    @Autowired
    UserRelationMapper userRelationMapper;
    @ResponseBody
    @RequestMapping(value = "/get_info_list_followedFriendInfo",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_followedFriendInfo(
            @RequestParam(value = "page",required = false) Integer page,
            HttpServletRequest httpRequeste) {
        System.out.println("有新请求进入"+page);
        HashMap res=new HashMap();
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);

        ArrayList<friendChartEntiy> list=userRelationMapper.selectFriendChartEntiy(userName);
        //list.add(userRelationMapper.selectByPrimaryKey(i));
        //此接口需要获取好友的（头像链接，好友的昵称，好友的关注时间）
        //其中好友的头像链接，好友的昵称需要从表获取，好友的关注时间从userrelation表中获取
        res.put("myName",userName);
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        return res;
    }



    @ResponseBody
    @RequestMapping(value = "/get_info_list_personalInfo",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_personalInfo(
            @RequestParam(value = "page",required = false) Integer page,
            HttpServletRequest httpRequeste) {
        //此接口根据用户名获取自己的所有动态
        System.out.println("有新请求进入"+page);
        HashMap res=new HashMap();
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        ArrayList<UserMomentsInfo> list=userMomentsInfoMapper.selectByUserName(userName);
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        res.put("myName",userName);
        return res;
    }


    @Autowired
    CollectMapper collectMapper;
    @ResponseBody
    @RequestMapping(value = "/get_info_list_collectInfo",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_collectInfo(
            @RequestParam(value = "page",required = false) Integer page,
            HttpServletRequest httpRequeste) {
        //此接口根据用户名获取自己的所有动态
        System.out.println("有新请求进入"+page);
        HashMap res=new HashMap();
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        ArrayList<Collect> list=collectMapper.selectMyCollectByUserName(userName);
        //System.out.println(list);
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        res.put("myName",userName);
        return res;
    }

    /**
     * 此接口用来拉取动态的评论，会传入两个参数，page和动态id
     * 虽然会传入page值，但是考虑到规模小，暂不做分页处理
     * 所以就是根据receviedCommentID值找到评论，需要传回的字段有usernickname，content，picurl
     * @param httpRequeste
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/get_info_list_userComment",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_userComment(
            @RequestParam(value = "page") Integer page,
            @RequestParam(value = "receviedCommentID") Integer receviedCommentID,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("拉取动态评论...");
        HashMap res=new HashMap();
        //判断传入的动态id值
        System.out.println(page+" "+receviedCommentID);
        //获取数据
        ArrayList<Comment> list=commentMapper.selectByReceviedCommentID(receviedCommentID);
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        System.out.println(JSON.toJSON(list).toString());
        res.put("data",JSON.toJSON(list));
        res.put("msg","success");
        return res;
    }


    /**
     * 获取用户留言功能
     * @param page
     * @param receviedCommentID
     * @param httpRequeste
     * @return
     */
    @Autowired
    UsermessageMapper usermessageMapper;
    @ResponseBody
    @RequestMapping(value = "/get_info_list_userMessage",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_userMessage(
            @RequestParam(value = "page") Integer page,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("获取用户留言...");
        HashMap res=new HashMap();
        //获取用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        ArrayList<Usermessage> list=usermessageMapper.selectAll(userName);
        System.out.println(JSON.toJSON(list).toString());
        res.put("data",JSON.toJSON(list));
        res.put("msg","success");
        return res;
    }



    //个人动态表单接口
    @ResponseBody
    @RequestMapping(value = "/get_info_list_table")
    public Map<String,Object> get_info_list_table(
            @RequestParam(value = "page") Integer page,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("获取table...");
        HashMap res=new HashMap();
        //获取用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        ArrayList<UserMomentsInfo> list=userMomentsInfoMapper.selectByUserName(userName);
        System.out.println(JSON.toJSON(list).toString());
        res.put("data",JSON.toJSON(list));
        res.put("msg","success");
        res.put("count",2);
        res.put("code",0);
        return res;
    }



    @Autowired
    UserInfoMapper userInfoMapper;
    @ResponseBody
    @RequestMapping(value = "/isFriendExist",method = RequestMethod.GET)
    public Map<String,Object> isFriendExist(
            @RequestParam(value = "name") String name,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("好友是否存在...");
        HashMap res=new HashMap();
        //获取用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        System.out.println(userInfoMapper.isFriendExist(name));
        if (userInfoMapper.isFriendExist(name)==0) {
            res.put("msg", "no");
            return res;
        }
        else{
            res.put("msg","yes");
            return res;
        }

    }



    @ResponseBody
    @RequestMapping(value = "/getSearchInfo",method = RequestMethod.GET)
    public Map<String,Object> getSearchInfo(
            @RequestParam(value = "name") String name,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("获取信息...");
        HashMap res=new HashMap();
        System.out.println("获取用户cookie值为："+name);
        //开始操作数据库
        System.out.println(JSON.toJSONString(userInfoMapper.getSearchInfo(name)));
        UserInfo userInfo=userInfoMapper.getSearchInfo(name);
        res.put("name",userInfo.getUsernickname());
        res.put("head",userInfo.getUserheadurl());
        return res;
    }


    @ResponseBody
    @RequestMapping(value = "/followFriend",method = RequestMethod.GET)
    public Map<String,Object> followFriend(
            @RequestParam(value = "friendname") String friendname,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("关注...");
        HashMap res=new HashMap();
        //获取用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        //开始判断是否允许关注
        System.out.println(friendname+userName);
        if(userName==friendname) {
            res.put("msg", "self");
            return res;
        }else if(userRelationMapper.followFriend(userName).contains(friendname)){
            res.put("msg","repeat");
            return res;
        }else if(!userRelationMapper.followFriend(userName).contains(friendname)){
            res.put("msg","success");
            UserRelation userRelation=new UserRelation();
            userRelation.setUsername(userName);
            userRelation.setFriendname(friendname);
            userRelation.setFollowtime(new Date());
            userRelationMapper.insert(userRelation);
            return res;
        }
        return null;
    }


    @ResponseBody
    @RequestMapping(value = "pdftoword")
    public Map<String,Object> pdftoword(Model model, HttpServletRequest httpRequeste){
        String pdfPath="C:\\Users\\12733\\Desktop\\666.pdf";
        System.out.println("开始处理");
        PDDocument doc = null;
        OutputStream fos = null;
        Writer writer = null;
        PDFTextStripper stripper = null;
        try {
            doc = PDDocument.load(new File(pdfPath));
            fos = new FileOutputStream(pdfPath.substring(0, pdfPath.indexOf(".")) + ".doc");
            writer = new OutputStreamWriter(fos, "UTF-8");
            stripper = new PDFTextStripper();
            int pageNumber = doc.getNumberOfPages();
            stripper.setSortByPosition(true);
            stripper.setStartPage(1);
            stripper.setEndPage(pageNumber);
            stripper.writeText(doc, writer);
            writer.close();
            doc.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("end..");


        HashMap hashMap=new HashMap();
        hashMap.put("msg","success");
        return hashMap;
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
