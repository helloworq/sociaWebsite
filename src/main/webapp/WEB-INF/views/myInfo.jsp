<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/5/12
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>开始使用layui</title>
    <link rel="stylesheet" href="/css/layui/css/layui.css">
    <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="/css/layui/layui.js"></script>
    <script type="text/javascript" src="/css/layui/css/modules/laydate/default/laydate.css"></script>
</head>


<style>
    .PCD_header {
        height: 400px;
        width: 500px;
        overflow: hidden;
        position: center;
        *vertical-align: auto;
    }
    .PCD_header .pf_wrap {
        position: absolute;
        width: 400px;
        height: 500px;
        *z-index: 5;
    }
    .PCD_header .banner_transition {
        -webkit-transform: scaleX(1) scaleY(1);
        transform: scaleX(1) scaleY(1);
        -webkit-transition: -webkit-transform 4s linear;
        transition: transform 4s linear;
    }
    .PCD_header .cover_wrap {
        position: absolute;
        width: 400px;
        height: 500px;
        background-position: center bottom;
        background-repeat: no-repeat;
        background-size: 100%;
        -webkit-transform: scaleX(1.05) scaleY(1.05);
        transform: scaleX(1.05) scaleY(1.05);
        z-index: 1;
    }
    .PCD_header .S_shadow {
        background: url(/img/Main_desk.jpg) center bottom repeat-x;
        background: -webkit-linear-gradient(top, rgba(0,0,0,0) 50%,rgba(0,0,0,0.3) 100%);
        background: linear-gradient(to bottom, rgba(0,0,0,0) 50%,rgba(0,0,0,0.3) 100%);
    }
    .PCD_header .shadow {
        position: absolute;
        width: 400px;
        height: 500px;
        overflow: hidden;
        z-index: 2;
    }
    .PCD_header .pf_photo {
        position: relative;
        width: 100px;
        height: 100px;
        margin: 10px auto 0;
        padding: 4px;
        background: #fff;
        background: rgba(255,255,255,0.3);
        border-radius: 50%;
    }
    .PCD_header .photo_wrap, .PCD_header .pf_photo .photo {
        width: 100px;
        height: 100px;
        border-radius: 50%;
    }
    p {
        display: block;
        margin-block-start: 1em;
        margin-block-end: 1em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
    }
    .PCD_header .pf_username {
        margin-top: 6px;
        color: #0C0C0C;
        text-align: center;
        text-shadow: 0 0 4px rgba(0,0,0,0.5);
        vertical-align: text-bottom;
    }
    .PCD_header .username {
        font-size: 22px;
        display: inline;
    }
    .PCD_header .pf_username .icon_bed {
        margin-left: 3px;
    }
    .PCD_header .pf_intro {
        margin-top: 4px;
        text-align: center;
        color: #fff;
        line-height: 18px;
        text-shadow: 0 0 4px rgba(0,0,0,0.5);
    }
    .PCD_header .pf_intro .tlink {
        color: #0C0C0C;
    }
    .PCD_header .upcover {
        position: absolute;
        top: 10px;
        right: 25px;
        z-index: 10;
    }
</style>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        //嵌套在指定容器中
        //日期
        laydate.render({
            elem: '#date'
        });

        laydate.render({
            elem: '#test2'
            ,position: 'static'
            ,change: function(value, date){ //监听日期被切换
                lay('#testView').html(value);
            }
        });
    });

</script>


<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">公考小分队</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" id="rightName">
                    <img src="/img/5050.jpg" class="layui-nav-img" id="rightIcon">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="login">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">全部</a>
                    <dl class="layui-nav-child">
                        <dd><a href="friendsMoments">好友动态</a></dd>
                        <dd><a href="personalPage">我的动态</a></dd>
                        <dd><a href="myFriends">我的好友</a></dd>
                        <dd><a href="writeMoment">编写动态</a></dd>
                        <!--dd><a href="">超链接</a></dd-->
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">我的</a>
                    <dl class="layui-nav-child">
                        <dd><a href="myInfo">我的信息</a></dd>
                        <dd><a href="myCollect">我的收藏</a></dd>
                        <dd><a href="userCommentPage">动态管理</a></dd>
                        <dd><a href="findFriends">搜索好友</a></dd>

                        <!--dd><a href="javascript:;">我的签到</a></dd>
                        <dd><a href="javascript:;">签到广场</a></dd>
                        <dd><a href="javascript:;">签到记录</a></dd>
                        <dd><a href="javascript:;">打卡排行榜</a></dd>
                        <dd><a href="">超链接</a></dd-->
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">使用反馈</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">给予反馈</a></dd>
                        <dd><a href="javascript:;">反馈回复</a></dd>
                        <!--dd><a href="">超链接</a></dd-->
                    </dl>
                </li>
                <li class="layui-nav-item layui-nav-itemed">
                    <a href="javascript:;">留言板</a>
                    <dl class="layui-nav-child">
                        <dd><a href="userMessage">我的留言</a></dd>
                        <dd><a href="javascript:;">待开发</a></dd>
                        <!--dd><a href="">超链接</a></dd-->
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div class="layui-row">
            <div class="layui-col-xs9">






                <div class="PCD_header" style="padding: 25px;display: inline-block; float: left;">
                    <div class="pf_wrap">
                        <div class="cover_wrap banner_transition" style="background-image:url(http://img.t.sinajs.cn/t5/skin/public/profile_cover/001.jpg)" cover-type="1"></div>
                        <div class="shadow  S_shadow">
                            <div class="pf_photo">
                                <p class="photo_wrap">
                                    <a href="" title="更换头像">
                                        <img src="/img/5050.jpg" class="photo" id="headurl">
                                    </a>
                                </p>
                            </div>
                            <div class="pf_username">
                                <h1 class="username" id="username">刘彻</h1>
                            </div>
                            <div class="pf_username">
                                <h1>用户昵称:</h1><a class="username" id="usernickname">秦始皇</a>
                            </div>
                            <div class="pf_username">
                                <h1>性别:</h1><a class="username" id="sexy">男</a>
                            </div>
                            <div class="pf_username">
                                <h1>加入时间:</h1><a class="username" id="jointime">2020-04-18 12:02:59</a>
                            </div>
                            <div class="pf_username">
                                <h1>用户生日:</h1><a class="username" id="birthday">2020-04-18 12:02:59</a>
                            </div>
                            <div class="pf_username">
                                <h1>用户年龄:</h1><a class="username" id="userage">20</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div style="padding: 25px;display: inline-block; float: left;">
                    <form class="layui-form" action="">
                        <div class="layui-form-item">
                            <tr><th>
                                我的名字
                                <input name="name" style="margin-top: 5px" type="text" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th>
                                我的昵称
                                <input  name="nickname" style="margin-top: 5px" type="text" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th>
                                我的性别
                                <input  name="sex" style="margin-top: 5px" type="text" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th>
                                加入时间
                                <input style="margin-top: 5px" type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th>
                                用户生日
                            <input  name="birthday" style="margin-top: 5px" type="text" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th>
                                用户年龄
                                <input  name="age" style="margin-top: 5px" type="text" class="layui-input">
                            </th></tr>
                        </div>
                        <div class="layui-form-item">
                            <tr><th class="layui-input-block">
                                <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交修改</button>
                            </th></tr>
                        </div>
                    </form>
                </div>

            </div>
            <!--div class="layui-col-xs3">
                <div id="test2" style="margin: auto;left: 0;right: 0;top: 0;bottom: 0"></div>
            </div-->
            <div id="noticeMarker"></div>
        </div>
    </div>


</div>


</body>
<script>

    $(document).ready(function(){

        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/get_info_list_MyInfo",//指向loginCheck处理器
            dataType: "json",
            success: function (data) {
                //赋值
                //头像链接
                $("#headurl").attr("src",data.userinfo.userheadurl);
                $("#username").innerText=data.userinfo.username;
                $("#usernickname").innerText=data.userinfo.usernickname;
                $("#sexy").innerText=data.userinfo.usersex;
                $("#jointime").innerText=data.userinfo.userjointime;
                $("#birthday").innerText=data.userinfo.userbirthday;
                $("#userage").innerText=data.userinfo.userage;

                //修改头像链接
                $("#rightIcon").attr("src",data.userinfo.userheadurl);
                //修改用户名
                $("#rightName").html($("#rightName").html().replace("贤心",data.userinfo.usernickname))
            },
            error: function (data) {
                alert("error")
            }
        })
    });




    function setUserInfo() {

        layui.use('layer', function () {
            var layer = layui.layer;

            layer.open({
                //layer提供了5种层类型。可传入的值有：
                //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）。
                //若你采用layer.open({type: 1})方式调用，则type为必填项（信息框除外）
                type: 1,
                content:
                    '\t    <div class="layui-inline">\n' +
                    '\t      <label class="layui-form-label">验证日期</label>\n' +
                    '\t      <div class="layui-input-inline">\n' +
                    '\t        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">\n' +
                    '\t      </div>\n' +
                    '\t    </div>\n',//这里content是一个普通的String,可以放网页代码
                area: ['800px', '500px'],//控制长宽
                //shade: [0.8, '#393D49'],//弹窗外区域颜色
                anim: 0,//弹窗出现方式
            });

        });
    }

    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            layer.msg('修改失败！内测阶段禁止修改信息！', {icon: 2});
            return false;
        });
    });
</script>
<script>
    layui.config({
        base: "../mods/"
    }).use("mods", function (mods) {
        //初始化消息组件
        mods(["layer", "jsanNotice"], function (layer) {
            const notice = layer.noticeMarker({
                "elem": "#noticeMarker",
                "positionX": "right",
                "positionY": "100px",
                "lowKey": true,
                "noticeWindow": {
                    "type": 1,
                    "title": "消息",
                    "classType": {"notice": "通知", "alerted": "预警", "other": "其他"},
                    "width": "300px",
                    "height": "720px",
                    "contentWidth": "80%",
                    "contentHeight": "65%"
                }
            });

            //手动推送新消息，在使用消息组件自带的消息窗口时使用
            notice.addNews({
                "lowKey": true,
                "classTypeId": "notice",
                "content": [{"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"},
                    {"title": "【通知】一条来自测试的消息消息消息消息消息消息消息消息消息", "content": "一条来自测试的消息，最多20字，最多20字，最多20字，最多20字，最多20字，最多20字", "date": "2019-07-28 19:30:36", "url": "https://www.baidu.com"}
                ]
            });

            //手动进行消息盒子提醒，通常用于自定义消息窗口的时候使用
            /*notice.remind({
                "lowKey": false
            });*/
        });
    });
</script>
</html>



