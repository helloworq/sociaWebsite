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
<style>
    .PCD_header {
        height: 300px;
        overflow: hidden;
        position: relative;
        *vertical-align: auto;
    }
    .PCD_header .pf_wrap {
        position: absolute;
        width: 100%;
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
        width: 100%;
        height: 300px;
        background-position: center bottom;
        background-repeat: no-repeat;
        background-size: 100%;
        -webkit-transform: scaleX(1.05) scaleY(1.05);
        transform: scaleX(1.05) scaleY(1.05);
        z-index: 1;
    }
    .PCD_header .S_shadow {
        background: url(../../../images/pagecard/bg_header_shadow.png?id=1404211047727) center bottom repeat-x;
        background: -webkit-linear-gradient(top, rgba(0,0,0,0) 50%,rgba(0,0,0,0.3) 100%);
        background: linear-gradient(to bottom, rgba(0,0,0,0) 50%,rgba(0,0,0,0.3) 100%);
    }
    .PCD_header .shadow {
        position: absolute;
        width: 100%;
        height: 300px;
        overflow: hidden;
        z-index: 2;
    }
    .PCD_header .pf_photo {
        position: relative;
        width: 100px;
        height: 100px;
        margin: 48px auto 0;
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
        color: #fff;
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
        color: #fff;
    }
    .PCD_header .upcover {
        position: absolute;
        top: 10px;
        right: 25px;
        z-index: 10;
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
            <li class="layui-nav-item"><a href="login">退出</a></li>
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
                    <legend>动态——好友动态</legend>
                </fieldset>
                <div style="padding: 15px;"><!--显示流加载内容-->
                    <ul id="LAY_demo1" style="height: 100%;overflow:auto;"></ul>
                </div>

            </div>
            <div class="layui-col-xs3"><!--显示日历-->
                <div id="test2" style="margin: auto;left: 0;right: 0;top: 0;bottom: 0"></div>
            </div>

            <div id="noticeMarker"></div>


        </div>
    </div>


</div>


</body>
<script language="JavaScript">

    layui.use('flow', function(){
        var flow = layui.flow;
        flow.load({
            elem: '#LAY_demo1' //流加载容器
            ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto:true
            ,done: function(page, next){ //执行下一页的回调
                setTimeout(function(){
                    var lis = [];
                    $.get("/controller/get_info_list_friendInfo?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        layui.each(res.data, function(index, item){
                            lis.push('<li>'+item.id+'</li>'+
                                '           <li><div class="card-wrap" style="height: 250px;width:100%;overflow:auto;">\n' +
                                '                <div class="card">\n' +
                                '                    <div class="card-feed">\n' +
                                '                        <div class="avator"><img src="'+item.picurl+'">\n' +
                                '                        </div>\n' +
                                '                        <!--微博内容-->\n' +
                                '                        <div class="content" node-type="like">\n' +
                                '                            <div class="info">\n' +
                                '                                <div>\n' +
                                '                                    <a href="" class="name" onclick="loadUserPage(this)" >'
                                +item.usernickname+'</a>\n' +
                                '                                </div>\n' +
                                '                            </div>\n' +
                                '                            <p class="txt" node-type="feed_list_content" nick-name="隔夜饭馊特了">'+
                                item.content+'</p>\n' +
                                '                            <p class="from"><!--a >今天 19:36 转赞人数超过40</a--></p>\n' +
                                '                        </div>\n' +
                                '                        <!--/微博内容-->\n' +
                                '                    </div>\n' +
                                '                    <div class="card-act">\n' +
                                '                        <ul>\n' +
                                '                            <li><a id="'+item.id+'" onclick="clickCollect(this.id)">收藏 '+item.collect+'</a></li>\n' +
                                '                            <li><a id="'+item.id+'" onclick="loadComment(this.id)">评论 '+item.comment+'</a></li>\n' +
                                '                            <li><a id="'+item.id+'" onclick="clickLikes(this.id)">' +
                                '<i class="icon-act icon-act-praise"></i> <em>赞 '+item.likes+
                                '</em></a></li>\n' +
                                '                        </ul>\n' +
                                '                    </div>\n' +
                                '                    <div node-type="feed_list_repeat"></div>\n' +
                                '                </div>\n' +
                                '            </div></li>'
                            );
                            //修改头像链接
                            $("#rightIcon").attr("src",item.picurl);
                            //修改用户名
                            $("#rightName").html($("#rightName").html().replace("贤心",res.username))
                        });
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page < res.pages); //假设总页数为 10
                    });
                });
            }
        });
    });



    var receviedCommentID;
    function loadComment(id) {
        //alert(id)
        receviedCommentID = id;
        //alert(receviedID)
        layui.use('layer', function () {
            var layer = layui.layer;
            //layer.msg('hello');
            //layer.msg('操作完成！', {icon: 1});
            layer.open({
                //layer提供了5种层类型。可传入的值有：
                //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）。
                //若你采用layer.open({type: 1})方式调用，则type为必填项（信息框除外）
                type: 1,
                content: '<textarea placeholder="请输入内容" class="layui-textarea" id="textareaText"></textarea>' +
                    '<button class="layui-btn" onclick="sendMyComment()">发表我的评论</button>' +
                    '                <div style="padding: 15px;">\n' +
                    '                    <ul id="COMMENT" style="height: 100%;overflow:auto;"></ul>\n' +
                    '                </div>',//这里content是一个普通的String
                area: ['800px', '500px'],//控制长宽
                //shade: [0.8, '#393D49'],//弹窗外区域颜色
                anim: 0,//弹窗出现方式
                success: function () {
                    layui.use('flow', function () {
                        var flow = layui.flow;
                        flow.load({
                            elem: '#COMMENT' //流加载容器
                            , scrollElem: '#COMMENT' //滚动条所在元素，一般不用填，此处只是演示需要。
                            , isAuto: true
                            , done: function (page, next) { //执行下一页的回调
                                setTimeout(function () {
                                    var lis = [];
                                    $.get("/controller/get_info_list_userComment?page=" + page+"&receviedCommentID="+receviedCommentID, function (res) {
                                        //假设你的列表返回在data集合中
                                        //alert("进入控制器")
                                        layui.each(res.data, function (index, item) {
                                            lis.push(
                                                '<li>' + item.id + '</li>' +
                                                '                <li><div class="card">\n' +
                                                '                    <div class="card-feed">\n' +
                                                '                        <div class="avator">\n' +
                                                '                            <img src="/img/5050.jpg">\n' +
                                                '                        </div>\n' +
                                                '                        <!--微博内容-->\n' +
                                                '                        <div class="content" node-type="like">\n' +
                                                '                            <div class="info">\n' +
                                                '                                <div>\n' +
                                                '                                    <a href="" class="name" nick-name="隔夜饭馊特了">' + item.commentusername +
                                                '      发布于：'+ item.time +'</a>\n' +
                                                '                                </div>\n' +
                                                '                            </div>\n' +
                                                '                            <p class="txt" node-type="feed_list_content" nick-name="隔夜饭馊特了">' + item.comment + '</p>\n' +
                                                '                            <p class="from"><!--a >今天 19:36 转赞人数超过40</a--></p>\n' +
                                                '                        </div>\n' +
                                                '                    </div>\n' +
                                                '                </div>' +
                                                '</li>'
                                            );

                                        });
                                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                                        next(lis.join(''), page < res.pages); //假设总页数为 10
                                    });
                                });
                            }
                        });
                    });
                }
            });

        });
    }

    function sendMyComment() {
        //此方法用来上传我的评论
        alert("文本框值为："+$("#textareaText").val()+" id为："+receviedCommentID)

        $.ajax({
            ansyc: false,//是否异步发送
            type: "POST",
            url: "/controller/actionOfComment",//指向loginCheck处理器
            data: {
                "textareaText"     : $("#textareaText").val(),
                "receviedCommentID":receviedCommentID
            },
            dataType: "json",
            success: function (data) {
                alert("信息："+data.msg)
                //清除文本框内容
                $("#textareaText").val("")
                //操作完成后显示这个，比较好看
                layui.use('layer', function() {
                    var layer = layui.layer;
                    //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                    layer.msg('评论成功！', {icon: 1});
                });
            },
            error: function (data) {
                alert(data.msg)
                layui.use('layer', function() {
                    var layer = layui.layer;
                    layer.msg('评论失败！', {icon: 2});
                });
            }
        })

    }


    var receviedCommentIDofLikes
    function clickLikes(id) {
        receviedCommentIDofLikes=id;

        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/actionOfLikes",//指向loginCheck处理器
            data: {"receviedCommentIDofLikes":receviedCommentIDofLikes},
            dataType: "json",
            success: function (data) {
                alert("信息："+data.msg)
                //操作完成后显示这个，比较好看
                layui.use('layer', function() {
                    var layer = layui.layer;
                    //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                    layer.msg('点赞成功！', {icon: 1});
                });
            },
            error: function (data) {
                alert(data.msg)
                layui.use('layer', function() {
                    var layer = layui.layer;
                    layer.msg('点赞失败！', {icon: 2});
                });
            }
        })

    }


    var receviedCollectID;
    function clickCollect(id) {
        receviedCollectID=id;
        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/actionOfCollect",//指向loginCheck处理器
            data: {"receviedCollectID":receviedCollectID},
            dataType: "json",
            success: function (data) {
                alert("信息："+data.msg)
                //alert(data.msg==("success"))
                //alert(data.msg==("fail"))
                //alert(data.msg.equals("success"))
                //alert(data.msg.equals("fail"))
                //操作完成后显示这个，比较好看
                if(data.msg==("success")) {
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('收藏成功！', {icon: 1});
                    });
                }
                else if(data.msg==("fail")){
                    layui.use('layer', function () {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('收藏失败！你已经收藏过了', {icon: 2});
                    });
                }
            },
            error: function (data) {
                alert(data.msg)
                layui.use('layer', function() {
                    var layer = layui.layer;
                    layer.msg('收藏失败！', {icon: 2});
                });
            }
        })
    }




    function loadUserPage(target){
        //跳转到特定用户专业
        //获取指定用户名
        //alert($(target).text());
        window.open("userPage?username="+encodeURI($(target).text()));
    }


    function cancelFollow(element) {
        var buttonID=element.id//获取按钮的id值
        //由于流加载生成的按钮id值和friendName的id值一样所以提取按钮id值后面的序号再组合以获取friendname的id值
        var friendName=document.getElementById("friendName"+buttonID.split("followBt")[1]).innerText

        alert(friendName)

        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/cancelFollow",//指向cancelFollow处理器
            data: {"friendName": friendName},//目标url
            dataType: "json",
            success: function (data) {
                if (data.msg == "success") {
                    alert("成功取消关注")
                } else
                    alert("ajax请求成功但是链接出现了问题" + data.msg);
            },
            error: function (data) {
                alert("ajax请求失败" + data.msg);
            }
        })

    }

</script>
<script>
    layui.config({
        base: "/mods/"
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

