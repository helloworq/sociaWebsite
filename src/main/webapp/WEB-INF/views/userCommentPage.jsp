<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/5/12
  Time: 13:39
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



                <a id="66" onclick="loadComment(this.id)">aaaaa</a>




            </div>
            <div class="layui-col-xs3"><!--显示日历-->
                <div id="test2" style="margin: auto;left: 0;right: 0;top: 0;bottom: 0"></div>
            </div>
        </div>
    </div>


</div>


</body>
<script>

    var text='                <li><div class="card">\n' +
        '                    <div class="card-feed">\n' +
        '                        <div class="avator">\n' +
        '                            <img src="/img/5050.jpg">\n' +
        '                        </div>\n' +
        '                        <!--微博内容-->\n' +
        '                        <div class="content" node-type="like">\n' +
        '                            <div class="info">\n' +
        '                                <div>\n' +
        '                                    <a href="" class="name" nick-name="隔夜饭馊特了">汉武帝</a>\n' +
        '                                </div>\n' +
        '                            </div>\n' +
        '                            <p class="txt" node-type="feed_list_content" nick-name="隔夜饭馊特了">将进酒唐代：李白 君不见黄河之水天上来，奔流到海不复回。君不见高堂明镜悲白发</p>\n' +
        '                            <p class="from"><!--a >今天 19:36 转赞人数超过40</a--></p>\n' +
        '                        </div>\n' +
        '                    </div>\n' +
        '                </div>' +
        '</li>';

    /*
    layui.use('layer', function(){
        var layer = layui.layer;

        //layer.msg('hello');
        //layer.msg('操作完成！', {icon: 1});
        layer.open({
            //layer提供了5种层类型。可传入的值有：
            //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）。
            //若你采用layer.open({type: 1})方式调用，则type为必填项（信息框除外）
            type: 1,
            content: text ,//这里content是一个普通的String
            area: ['600px', '300px'],//控制长宽
            shade: [0.8, '#393D49'],//弹窗外区域颜色
            anim:0//弹窗出现方式
        });

    });
     */
    var receviedCommentID;
    function loadComment(id) {
        //alert(id)
        receviedCommentID=id;
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
                content:'<textarea placeholder="请输入内容" class="layui-textarea" id="textareaText"></textarea>' +
                    '<button class="layui-btn" onclick="sendMyComment()">发表我的评论</button>'+
                    '                <div style="padding: 15px;">\n' +
                    '                    <ul id="COMMENT" style="height: 100%;overflow:auto;"></ul>\n' +
                    '                </div>',//这里content是一个普通的String
                area: ['800px', '500px'],//控制长宽
                //shade: [0.8, '#393D49'],//弹窗外区域颜色
                anim: 0,//弹窗出现方式
                success: function () {
                    layui.use('flow', function(){
                        var flow = layui.flow;
                        flow.load({
                            elem: '#COMMENT' //流加载容器
                            ,scrollElem: '#COMMENT' //滚动条所在元素，一般不用填，此处只是演示需要。
                            ,isAuto:true
                            ,done: function(page, next){ //执行下一页的回调
                                setTimeout(function(){
                                    var lis = [];
                                    $.get("/controller/get_info_list_friendInfo?page="+page, function(res){
                                        //假设你的列表返回在data集合中
                                        //alert("进入控制器")
                                        layui.each(res.data, function(index, item){
                                            lis.push(
                                                '<li>'+item.id+'</li>'+
                                                '                <li><div class="card">\n' +
                                                '                    <div class="card-feed">\n' +
                                                '                        <div class="avator">\n' +
                                                '                            <img src="/img/5050.jpg">\n' +
                                                '                        </div>\n' +
                                                '                        <!--微博内容-->\n' +
                                                '                        <div class="content" node-type="like">\n' +
                                                '                            <div class="info">\n' +
                                                '                                <div>\n' +
                                                '                                    <a href="" class="name" nick-name="隔夜饭馊特了">'+item.usernickname+'</a>\n' +
                                                '                                </div>\n' +
                                                '                            </div>\n' +
                                                '                            <p class="txt" node-type="feed_list_content" nick-name="隔夜饭馊特了">'+item.content+'</p>\n' +
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
            },
            error: function (data) {
                alert(data.msg)
            }
        })

    }
/*
    layui.use('flow', function(){
        var flow = layui.flow;
        flow.load({
            elem: '#COMMENT' //流加载容器
            ,scrollElem: '#COMMENT' //滚动条所在元素，一般不用填，此处只是演示需要。
            ,isAuto:true
            ,done: function(page, next){ //执行下一页的回调
                setTimeout(function(){
                    var lis = [];
                    $.get("/controller/get_info_list_friendInfo?page="+page, function(res){
                        //假设你的列表返回在data集合中
                        //alert("进入控制器")
                        layui.each(res.data, function(index, item){
                            lis.push('<li>'+'</li>');

                        });
                        //执行下一页渲染，第二参数为：满足“加载更多”的条件，即后面仍有分页
                        //pages为Ajax返回的总页数，只有当前页小于总页数的情况下，才会继续出现加载更多
                        next(lis.join(''), page < res.pages); //假设总页数为 10
                    });
                });
            }
        });
    });

 */
</script>

</html>



