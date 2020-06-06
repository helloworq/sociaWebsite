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

            <div id="noticeMarker"></div>
    </div>


</div>


</body>
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



