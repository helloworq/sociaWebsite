<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/5/29
  Time: 14:37
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
                    <legend>页面 - 我的留言</legend>
                </fieldset>


                <div class="layui-form">

                    <div class="layui-form-item layui-form-text">
                        <label class="layui-form-label">给TA留言</label>
                        <div class="layui-input-block">
                            <textarea placeholder="请输入内容" class="layui-textarea" name="textarea"></textarea>
                        </div>
                    </div>


                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button type="submit" class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                        </div>
                    </div>


                    <div style="padding: 15px;"><!--显示流加载内容-->
                        <ul id="LAY_demo1" style="height: 100%;overflow:auto;"></ul>
                    </div>


                </div>



            </div>
            <div class="layui-col-xs3"><!--显示日历-->
                <div id="test2" style="margin: auto;left: 0;right: 0;top: 0;bottom: 0"></div>
            </div>
        </div>
    </div>


</div>


</body>
<script>

    layui.use('form', function(){
        var form = layui.form;
        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });


    layui.use('flow', function(){
        var flow = layui.flow;
        flow.load({
            elem: '#LAY_demo1' //流加载容器
            ,scrollElem: '#LAY_demo1' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto:true
            ,done: function(page, next){ //执行下一页的回调
                setTimeout(function(){
                    var lis = [];
                    $.get("/controller/get_info_list_userMessage?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        layui.each(res.data, function(index, item){
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
                                '                                    <a href="" class="name" nick-name="隔夜饭馊特了">' + item.whomessage +
                                '      发布于：'+ item.time +'</a>\n' +
                                '                                </div>\n' +
                                '                            </div>\n' +
                                '                            <p class="txt" node-type="feed_list_content" nick-name="隔夜饭馊特了">' + item.messagecontent + '</p>\n' +
                                '                            <p class="from"><!--a >今天 19:36 转赞人数超过40</a--></p>\n' +
                                '                        </div>\n' +
                                '                    </div>\n' +
                                '                </div>' +
                                '</li>'
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
</script>

</html>




