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

                <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                    <legend>页面 - 我的好友</legend>
                </fieldset>

                <div style="padding: 15px;"><!--显示流加载内容-->
                    <ul id="friendsChart" style="height: 100%;overflow:auto;" onclick=""></ul>
                </div>

                <!-- ul>
                    <li><div class="PCD_header" style="padding: 25px;display: inline-block; float: left;">
                        <div class="pf_wrap">
                            <div class="cover_wrap banner_transition" style="background-image:url(http://img.t.sinajs.cn/t5/skin/public/profile_cover/001.jpg)" cover-type="1"></div>
                            <div class="shadow  S_shadow">
                                <div class="pf_photo">
                                    <p class="photo_wrap">
                                        <a href="" title="更换头像">
                                            <img src="/img/5050.jpg" class="photo">
                                        </a>
                                    </p>
                                </div>
                                <div class="pf_username">
                                    <h1 class="username">周zhou赚钱养海bao</h1>
                                </div>
                                <div class="pf_intro">
                                    <a class="tlink" href="">关注时间:2020-04-10</a>
                                </div>
                                <button id="followBt1" type="button" class="layui-btn" style="position: absolute;top:0px">取消关注</button>
                            </div>
                        </div>
                    </div></li>
                </ul-->

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

    layui.use('flow', function(){
        var flow = layui.flow;
        flow.load({
            elem: '#friendsChart' //流加载容器
            ,scrollElem: '#friendsChart' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto:true
            ,done: function(page, next){ //执行下一页的回调
                setTimeout(function(){
                    var lis = [];
                    $.get("/controller/get_info_list_followedFriendInfo?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        layui.each(res.data, function(index, item){
                            lis.push(
                                '<li class="friendsChart"><div class="PCD_header" style="padding: 25px;display: inline-block; float: left;">\n' +
            '                        <div class="pf_wrap">\n' +
            '                            <div class="cover_wrap banner_transition" style="background-image:url(http://img.t.sinajs.cn/t5/skin/public/profile_cover/001.jpg)" cover-type="1"></div>\n' +
            '                            <div class="shadow  S_shadow">\n' +
            '                                <div class="pf_photo">\n' +
            '                                    <p class="photo_wrap">\n' +
            '                                        <a href="" title="更换头像">\n' +
            '                                            <img src="'+item.userHeadUrl+'" class="photo">\n' +
            '                                        </a>\n' +
            '                                    </p>\n' +
            '                                </div>\n' +
            '                                <div class="pf_username">\n' +
            '                                    <h1 class="username" id="friendName'+item.id+'">'+item.friendname+'</h1>\n' +
            '                                </div>\n' +
            '                                <div class="pf_intro">\n' +
            '                                    <a class="tlink" href="">关注时间:'+item.followTime+'</a>\n' +
            '                                </div>\n' +
            '                                <button id="followBt'+item.id+'" type="button" class="layui-btn" style="position: absolute;top:0px" onclick="cancelFollow(this)">取消关注</button>\n' +
            '                            </div>\n' +
            '                        </div>\n' +
            '                    </div></li>'
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



</script>
<script>
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
</html>

