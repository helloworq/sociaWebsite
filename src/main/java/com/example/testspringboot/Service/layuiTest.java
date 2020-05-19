package com.example.testspringboot.Service;


import com.alibaba.fastjson.JSON;
import com.example.testspringboot.dao.*;
import com.example.testspringboot.entiy.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/controller")
public class layuiTest {

    /**
     *
     * @param momentInfo
     * @param httpRequeste
     * @return
     */
    @Autowired
    UserInfoMapper userInfoMapper;

    @ResponseBody
    @RequestMapping(value = "/saveMoment",method = RequestMethod.GET)
    public Map<String,Object> saveMoment(@RequestParam(value = "momentInfo",required = true) String momentInfo,
                                           HttpServletRequest httpRequeste) {

        //此接口实现用户的发表动态功能，初步设想将用户的动态存进user_moments_info数据表中
        //数据表需要的字段有picurl,userNickName,userRealName,content,collect,share,comment,likes,sendTime
        //首先Ajax会将用户写的文本动态内容传进来，即content字段
        //picurl,userNickName,userRealName这三个字段则依据用户cookie值进行查询
        //collect,share,comment,likes,sendTime字段前四个为0，sendTime则使用new Date()函数获取
        System.out.println("有新请求进入saveMoment-"+momentInfo);
        //创建返回json对象
        HashMap res=new HashMap();
        //准备获取cookie值
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userNickName=getCookie(cookies,"userName");
        //创建userMomentInfo对象
        System.out.println(userNickName);
        UserMomentsInfo userMomentsInfo=new UserMomentsInfo();
        userMomentsInfo.setContent(momentInfo);//存入用户输入的动态
        System.out.println(userInfoMapper.getUserRealName(userNickName));
        userMomentsInfo.setUserrealname(userInfoMapper.getUserRealName(userNickName));//存入用户真名,登录时的用户名是nickname
        userMomentsInfo.setUsernickname(userNickName);//存入用户nickname
        userMomentsInfo.setSendtime(new Date());//存入发送时间
        System.out.println(userInfoMapper.getUserHeadUrl(userNickName));
        userMomentsInfo.setPicurl(userInfoMapper.getUserHeadUrl(userNickName));//存入用户头像
        userMomentsInfo.setCollect(0);
        userMomentsInfo.setComment(0);
        userMomentsInfo.setShare(0);
        userMomentsInfo.setLikes(0);
        System.out.println(userMomentsInfoMapper.selectCount());
        userMomentsInfo.setId(userMomentsInfoMapper.selectCount()+1);
        //写入到数据库里
        userMomentsInfoMapper.insert(userMomentsInfo);
        if (momentInfo==null){
            res.put("msg","error");
            return res;
        }
        //获取登录用户名
        System.out.println("写入用户动态成功！并且获取到用户cookie值为："+userNickName);
        //开始操作数据库
        res.put("msg","success");

        res.put("msg","success");
        return res;
    }


    /**
     * 测试用例。测试默认的layui滚动加载所提供的测试用例
     * @param page
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/layuiTest",method = RequestMethod.GET)
    public Map<String,Object> get_info_list(@RequestParam(value = "page",required = false) Integer page) {
        System.out.println("有新请求进入"+page);
        HashMap res=new HashMap();
        ArrayList list=new ArrayList();
        for (int i = 0; i < 15; i++) {
            list.add(new unit());
        }
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        return res;
    }

    /**
     * 测试用例。测试默认的layui滚动加载所提供的测试用例
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/layuiTest2",method = RequestMethod.GET)
    public Map<String,Object> get_info_list_2() {
        System.out.println("有新请求进入");
        HashMap res=new HashMap();
        ArrayList list=new ArrayList();
        for (int i = 0; i < 25; i++) {
            list.add(new unit2());
        }
        res.put("msg","success");
        res.put("data", JSON.toJSON(list));
        return res;
    }


    @Autowired
    UserMomentsInfoMapper userMomentsInfoMapper;

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

    @ResponseBody
    @RequestMapping(value = "/cancelFollow",method = RequestMethod.GET)
    public Map<String,Object> cancelFollow(@RequestParam(value = "friendName") String friendName,
                                           HttpServletRequest httpRequeste) {
        //此接口实现用户的取消关注功能，由于本应用的关注非强关注，即A关注B，B不一定会关注A
        //删除需要两个数据，一个是ajax访问时的登陆用户名，另一个是删除的好友名
        System.out.println("有新请求进入cancel");
        HashMap res=new HashMap();
        //判断传入的好友名
        if (friendName==null){
            res.put("msg","error");
            return res;
        }
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        userRelationMapper.deleteBySelectFriendNameAndUserName(userName,friendName);
        res.put("msg","success");
        return res;
    }


    //以下四个接口分别实现用户的收藏，分享，点赞，评论功能
    //首先分析一下需求，这四个操作不管操作了哪个都必须有通知和显示。原有的表不满足条件，因此需要创建新表。
    //
    //设计思路：用户的收藏操作分为两点，第一点只需要在userMomentsInfo表中将此动态字段的collect字段+1就行了
    //第二点相对麻烦一点，初步设想是建一个新表，

    /**
     *
     * @param httpRequeste
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/actionOfCollect",method = RequestMethod.GET)
    public Map<String,Object> actionCollect(HttpServletRequest httpRequeste) {
        //此接口实现用户的收藏功能
        System.out.println("有新请求进入");
        HashMap res=new HashMap();
        //判断传入的好友名

        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        res.put("msg","success");
        return res;
    }

    @ResponseBody
    @RequestMapping(value = "/actionOfShare",method = RequestMethod.GET)
    public Map<String,Object> actionOfShare(HttpServletRequest httpRequeste) {
        //此接口实现用户的分享功能
        System.out.println("有新请求进入");
        HashMap res=new HashMap();
        //判断传入的好友名

        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        res.put("msg","success");
        return res;
    }


    @Autowired
    CommentMapper commentMapper;
    /**
     * 用户评论接口，此处需要两个接口，一个是拉取评论信息，一个是作为评论的功能先说第二个
     * 基本流程：当用户点击动态下的评论键时，触发此接口，传入动态的唯一id值，和用户的评论内容
     * 用户评论的动态id值其中一个作用就是标识评论指向的动态，并且存入到comment评论表
     * 另一个是当用户评论完成的时候需要根据这个值自增user_moments_info表中的comment字段
     * comment表有五个字段：id,user_comment_id,comment,time,comment_username(唯一标识评论用户名)
     * 所有id==user_comment_id的评论都选中作为返回值.
     * @param httpRequeste
     * @return
     * 根据设计的实现方式，前端页面的<li>点赞/评论/收藏/分享</li>都得根据获取到的id信息新增一个id值用来简便
     * 的获取动态的唯一id值
     * 第二个的解释再下下个函数
     */
    @ResponseBody
    @RequestMapping(value = "/actionOfComment",method = RequestMethod.POST)
    public Map<String,Object> actionOfComment(@RequestParam(value = "textareaText") String textareaText,
                                              @RequestParam(value = "receviedCommentID") Integer receviedCommentID,
                                              HttpServletRequest httpRequeste) {
        //此接口实现用户的评论功能
        System.out.println("有新请求进入actionOfComment");
        System.out.println("textareaText："+textareaText+"receviedCommentID：  "+receviedCommentID);
        HashMap res=new HashMap();
        //判断传入的好友名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        //先尝试新增评论功能
        Comment comment=new Comment();
        comment.setTime(new Date());
        comment.setCommentusername(userName);
        comment.setComment(textareaText);
        comment.setUserccommentid(receviedCommentID);
        commentMapper.insert(comment);
        System.out.println("新增一条评论表信息");
        //评论完成后，由于表设计的原因需要在user_moments_info表里将评论的那条动态信息的comment
        //加一,自增之前得先获取comment值
        UserMomentsInfo userMomentsInfo=new UserMomentsInfo();
        userMomentsInfo.setId(receviedCommentID);
        userMomentsInfo.setComment(userMomentsInfoMapper.selectCommentNumber(receviedCommentID)+1);
        userMomentsInfoMapper.updateByPrimaryKeySelective(userMomentsInfo);
        res.put("test",JSON.toJSON(comment));
        res.put("msg","success");
        /*
        //开始操作数据库
        res.put("msg","success");
        */
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


    @Autowired
    LikesMapper likesMapper;
    /**
     * 赞这个功能目前设想的比较简单，就是直接点赞之后就往user_moments_info表里的likes字段里的数据自增一就行了
     * 不过为了后续的功能扩展，暂且和收藏功能一样设计一个likes数据表出来，和收藏功能的字段大致一样。
     * likes数据表有id，userLikesMomentID，time，likesUserName这四个字段
     *
     * 允许多次点赞
     * @param httpRequeste
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/actionOfLikes",method = RequestMethod.GET)
    public Map<String,Object> actionOfLikes(
            @RequestParam(value = "receviedCommentIDofLikes") Integer receviedCommentID,
            HttpServletRequest httpRequeste) {
        //此接口实现用户的点赞功能
        System.out.println("有新请求进入点赞，获取receviedCommentID值为："+receviedCommentID);
        HashMap res=new HashMap();
        //获取登录用户名
        Cookie[] cookies=httpRequeste.getCookies();
        String userName=getCookie(cookies,"userName");
        //开始赋值参数
        Likes likes=new Likes();
        likes.setTime(new Date());
        likes.setUserlikesmomentid(receviedCommentID);
        likes.setLikesusername(userName);
        likesMapper.insert(likes);
        //likes表赋值完成后需要在user_moment_info表里将对应动态的likes数值自增1
        UserMomentsInfo userMomentsInfo=new UserMomentsInfo();
        userMomentsInfo.setId(receviedCommentID);
        userMomentsInfo.setLikes(userMomentsInfoMapper.selectLikesNumber(receviedCommentID)+1);
        userMomentsInfoMapper.updateByPrimaryKeySelective(userMomentsInfo);
        System.out.println("获取用户cookie值为："+userName);
        //开始操作数据库
        res.put("likes",JSON.toJSON(likes));
        res.put("data",userMomentsInfo);
        res.put("msg","success");
        return res;
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
