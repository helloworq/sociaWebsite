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

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">公考小分队</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">个人中心</a></li>
            <li class="layui-nav-item"><a href="">我的主页</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
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
                        <dd><a href="myInfo">我的信息</a></dd>
                        <dd><a href="myCollect">我的收藏</a></dd>
                        <dd><a href="userCommentPage">用户评论</a></dd>
                        <!--dd><a href="">超链接</a></dd-->
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">签到打卡</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">我的签到</a></dd>
                        <dd><a href="javascript:;">签到广场</a></dd>
                        <dd><a href="javascript:;">签到记录</a></dd>
                        <dd><a href="javascript:;">打卡排行榜</a></dd>
                        <!--dd><a href="">超链接</a></dd-->
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
                    <a href="javascript:;">待开发</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">待开发</a></dd>
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
                    <div id="Pl_Official_Headerv6__1">
                        <div class="PCD_header">
                            <div class="pf_wrap">
                                <div class="cover_wrap banner_transition" style="background-image:url(//img.t.sinajs.cn/t5/skin/public/profile_cover/001.jpg)" cover-type="1">
                                </div>
                                <div class="shadow  S_shadow">
                                    <div class="pf_photo">
                                        <p class="photo_wrap">
                                            <a href="" title="更换头像">
                                                <img src="/img/5050.jpg" class="photo">
                                            </a>
                                        </p>
                                    </div>
                                    <div class="pf_username">
                                        <h1 class="username" id="myName"></h1>
                                    </div>
                                    <div class="pf_intro">
                                        <a class="tlink" href="">一句话介绍一下自己吧，让别人更了解你</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                <div style="padding: 15px;"><!--显示流加载内容-->
                    <ul id="LAY_demo1" style="height: 100%;overflow:auto;"></ul>
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
<script>

    layui.use('flow', function(){
        var flow = layui.flow;
        flow.load({
            elem: '#LAY_demo1' //流加载容器
            ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto:true
            ,done: function(page, next){ //执行下一页的回调
                setTimeout(function(){
                    var lis = [];
                    $.get("/controller/get_info_list_personalInfo?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        document.getElementById("myName").innerText=res.myName;
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
                                '                                    <a href="" class="name"  nick-name="隔夜饭馊特了" >'
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
                                '                            <li><a >收藏 '+item.collect+'</a></li>\n' +
                                '                            <li><a >转发 '+item.share+'</a></li>\n' +
                                '                            <li><a >评论 '+item.comment+'</a></li>\n' +
                                '                            <li><a ><i class="icon-act icon-act-praise"></i> <em>赞 '+item.likes+
                                '</em></a></li>\n' +
                                '                        </ul>\n' +
                                '                    </div>\n' +
                                '                    <div node-type="feed_list_repeat"></div>\n' +
                                '                </div>\n' +
                                '            </div></li>'
                            );

                        });
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page < 100); //假设总页数为 10
                    });
                });
            }
        });
    });

    /*
        layui.use('flow', function(){
            var flow = layui.flow;
            flow.load({
                elem: '#LAY_demo1' //流加载容器
                ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
                ,isAuto:true
                ,done: function(page, next){ //执行下一页的回调
                    setTimeout(function(){
                    var lis = [];
                    //模拟数据插入
                    //alert(page)
                    //setTimeout(function(){
                    //  var lis = [];
                    //  for(var i = 0; i < 8; i++){
                    //    lis.push('<li>'+ ( (page-1)*8 + i + 1 ) +'</li>')
                    //  }

                    $.get("/controller/layuiTest?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        layui.each(res.data, function(index, item){
                            lis.push('<li> <button type="button" class="layui-btn layui-btn-lg layui-btn-normal">'+
                                item.title
                                +'</button> </li>');
                        });
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page < 100); //假设总页数为 10
                    });
                    });
                }
            });
        });
    */

    /*
      //按屏加载图片
      flow.lazyimg({
        elem: '#LAY_demo3 img'
        ,scrollElem: '#LAY_demo3' //一般不用设置，此处只是演示需要。
      });

    });
    */

</script>
</html>

