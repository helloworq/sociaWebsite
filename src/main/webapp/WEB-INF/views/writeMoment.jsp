<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2020/4/22
  Time: 15:26
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


                <div style="padding: 15px;"><!--显示流加载内容-->
                    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                        <legend>编辑——我的动态</legend>
                    </fieldset>
                    <form>
                        <textarea id="userMoment" style="display: none;"></textarea>

                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button onclick="sendMoment()" class="layui-btn" lay-filter="demo1" style="float:left;">发表</button>
                                <button onclick="resetMoment()" class="layui-btn">重置</button>
                            </div>
                        </div>
                    </form>
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

    var textt;
    var index;
    var layedit;
    layui.use('layedit', function(){
        layedit = layui.layedit;
        index=layedit.build('userMoment'); //建立编辑器
    });


    function sendMoment(){
        layedit.sync(index);//将富文本框内容异步进textarea
        textt=layedit.getText(index);//获取富文本框内容
        alert(textt)
        $.ajax({
            ansyc: false,//是否异步发送
            type: "GET",
            url: "/controller/saveMoment",//指向loginCheck处理器
            data: {
                "momentInfo": textt
            },
            dataType: "json",
            success: function (data) {
                alert("ajax成功" + data.msg)
            },
            error: function (data) {
                alert("ajax请求失败");
                alert(data.msg)
            }
        })
    }

    function resetMoment() {
        alert("开始")
        document.getElementById("userMoment").innerText=""
    }
</script>

</html>


