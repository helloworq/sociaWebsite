<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/6/2
  Time: 8:50
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/3/30
  Time: 1:19
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


<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        //嵌套在指定容器中
        laydate.render({
            elem: '#test2'
            ,position: 'static'
            ,change: function(value, date){ //监听日期被切换
                lay('#testView').html(value);
            }
        });
    });

    function a() {
        alert("Sss")
    }
</script>
<style type="text/css">
    body {
        font: 12px/1.3 Arial,"PingFang SC","Hiragino Sans GB","Microsoft YaHei","WenQuanYi Micro Hei",sans-serif;
        overflow-x: hidden;
        color: #333;
        -webkit-font-smoothing: antialiased;
        background: #f7f7f7;
    }
    .card-wrap {
        margin-bottom: 10px;
        border-radius: 2px;
        border: 1px solid #eee;
        background: #fff;
    }
    .card {
    }
    .card-feed {
        padding: 16px;
        overflow: hidden;
        position: relative;
        top: 0px;
    }
    .card-feed .avator {
        float: left;
        display: inline;
        width: 50px;
        padding: 3px 0 6px;
    }
    .card-feed .content {
        font-size: 14px;
        margin-left: 60px;
        line-height: 25px;
        word-break: break-word;
    }
    .card-feed .from, .card-feed .from a {
        font-size: 12px;
        color: #808080;
    }
    .icon-act-praise {
        width: 12px;
        height: 13px;
        background-position: -100px -25px;
    }
    .card-act {
        border-top: 1px solid #eee;
        overflow: hidden;
        position: relative;
        bottom: 0px;
    }

    .card-act ul{
        position: relative;
        bottom: 0px;
    }

    .card-act li {
        width: 25%;
        height: 38px;
        line-height: 38px;
        margin-left: -1px;
        float: left;
        text-align: center;
    }
    .card-act li a {
        display: block;
        height: 22px;
        line-height: 22px;
        margin: 7px 0;
        border-left-style: solid;
        border-left-width: 1px;
        border-color: #d9d9d9;
    }

</style>

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
                <li class="layui-nav-item">
                    <a href="javascript:;">我的</a>
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
                <li class="layui-nav-item">
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

                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                    <legend>页面 - 搜索好友</legend>
                </fieldset>

                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <label class="layui-form-label">搜索好友</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" required  lay-verify="required" placeholder="请输入名字" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="formDemo">立即搜索</button>
                            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>


                <div class="PCD_header" id="box1" style="padding: 25px;display: none; float: left;">
                    <div class="pf_wrap">
                        <div class="cover_wrap banner_transition" style="background-image:url(http://img.t.sinajs.cn/t5/skin/public/profile_cover/001.jpg)" cover-type="1"></div>
                        <div class="shadow  S_shadow">
                            <div class="pf_photo">
                                <p class="photo_wrap">
                                    <a href="" title="更换头像">
                                        <img src="undefined" class="photo" id="boxicon">
                                    </a>
                                </p>
                            </div>
                            <div class="pf_username">
                                <h1 class="username" id="boxname"></h1>
                            </div>
                            <div class="pf_intro">

                            </div>
                            <button id="follow" type="button" class="layui-btn" style="position: absolute;top:0px" onclick="follow()">关注</button>
                        </div>
                    </div>
                </div>


            </div>


            <div class="layui-col-xs3">
                <div id="test2" style="margin: auto;left: 0;right: 0;top: 0;bottom: 0"></div>
            </div>

        </div>
    </div>
</div>
</body>

<style>
    .PCD_header {
        height: 300px;
        width: 300px;
        overflow: hidden;
        position: relative;
        *vertical-align: auto;
    }
    .PCD_header .pf_wrap {
        position: absolute;
        width: 300px;
        height: 300px;
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
        width: 300px;
        height: 300px;
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
        width: 300px;
        height: 300px;
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

    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            //layer.msg(JSON.stringify(data.field));
            var msg=data.field.title
            loadFriends(msg)//如果查到了好友则返回类似我的好友的数据
            return false;
        });
    });


    function loadFriends(name) {
        //判断好友是否存在
        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/isFriendExist",//指向cancelFollow处理器
            data: {"name": name},//目标url
            dataType: "json",
            success: function (data) {
                if (data.msg == "yes") {//存在，直接加载数据
                    alert("存在")
                    $.ajax({
                        ansyc: false,//是否异步发送
                        type: "GET",
                        url: "/controller/getSearchInfo",
                        data: {"name": name},//目标url
                        dataType: "json",
                        success: function (data) {
                            alert("daole ")
                            $('#box1').css('display','block');
                            $("#boxicon").attr("src",data.head);
                            $("#boxname").text(data.name);
                        },
                        error: function (data) {
                            alert("ajax请求失败");
                        }
                    })
                }
                else {
                    layui.use('layer', function() {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('好友不存在', {icon: 2});
                    });
                }
            },
            error: function (data) {
                alert("ajax请求失败" + data.msg);
            }
        })
    }


    function follow() {
        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/followFriend",
            data: {"friendname": $("#boxname").text()},//目标url
            dataType: "json",
            success: function (data) {
                if(data.msg=="self") {
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('禁止关注自己', {icon: 2});
                    });
                }else if(data.msg=="repeat") {
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('禁止重复关注', {icon: 2});
                    });
                }else if(data.msg=="success") {
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('关注成功', {icon: 1});
                    });
                }

            },
            error: function (data) {
                layui.use('layer', function() {
                    var layer = layui.layer;
                    //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                    layer.msg('关注失败！', {icon: 2});
                });
                alert("ajax请求失败");
            }
        })
    }
</script>

</html>


