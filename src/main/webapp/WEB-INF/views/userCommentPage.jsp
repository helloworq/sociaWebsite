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
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;" id="rightName">
                    <img src="/img/5050.jpg" class="layui-nav-img" id="rightIcon">
                    秦始皇
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


        <table class="layui-table" lay-data="{width: 1200, height:580, url:'/controller/get_info_list_table', page:true, id:'demo'}" lay-filter="demo">
            <thead>
            <tr>
                <th lay-data="{type:'checkbox', fixed: 'left'}"></th>
                <th lay-data="{field:'id', width:80, sort: true, fixed: true}">ID</th>
                <th lay-data="{field:'usernickname', width:80}">用户昵称</th>
                <th lay-data="{field:'userrealname', width:80, sort: true}">用户名</th>
                <th lay-data="{field:'content', width:250, edit:'text'}">动态</th>
                <th lay-data="{field:'collect', width:80}">收藏</th>
                <th lay-data="{field:'comment', width:80}">评论</th>
                <th lay-data="{field:'likes', width:80}">赞</th>
                <th lay-data="{field:'sendtime', width:125}">发送时间</th>
                <th lay-data="{field:'limit', title:'动态权限', width:95, templet: '#switchTpl', unresize: true}"></th>
                <th lay-data="{fixed: 'right', width:178, align:'center', toolbar: '#barDemo'}"></th>
            </tr>
            </thead>
        </table>

            </div>

        </div>
    </div>


</div>


</body>
<script>

    layui.use('table', function() {
        var table = layui.table
            ,form = layui.form;

        //监听单元格编辑
        table.on('edit(demo)', function(obj){
            var value = obj.value //得到修改后的值
                ,data = obj.data //得到所在行所有键值
                ,field = obj.field; //得到字段
            //layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
            //监听到修改好将数据更新到动态表里,这个功能和修改赞的功能一样所以放到同一个处理器处理
            $.ajax({
                ansyc: false,//是否异步发送
                type: "POST",
                url: "/controller/setMoment",//指向loginCheck处理器
                data: {
                    "changedContent":obj.value,
                    "MomentID":data.id
                },
                dataType: "json",
                success: function (data) {
                    layui.use('layer', function() {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('操作成功！', {icon: 1});
                    });
                },
                error: function (data) {
                    layui.use('layer', function() {
                        var layer = layui.layer;
                        layer.msg('操作失败！', {icon: 2});
                    });
                }
            })
        });


        //监听表格复选框选择
        table.on('checkbox(demo)', function (obj) {
            console.log(obj)
        });
        //监听工具条
        //
        table.on('tool(demo)', function (obj) {
            var data = obj.data;
            if (obj.event === 'detail') {
                layer.msg('ID：' + data.id + ' 的查看操作');
            } else if (obj.event === 'del') {
                layer.confirm('真的删除行么', function (index) {
                    obj.del();
                    $.ajax({
                        ansyc: false,//是否异步发送
                        type: "POST",
                        url: "/controller/deleteMoment",//指向loginCheck处理器
                        data: {"MomentID":data.id},
                        dataType: "json",
                        success: function (data) {
                            layui.use('layer', function() {
                                var layer = layui.layer;
                                //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                                layer.msg('删除成功！', {icon: 1});
                            });
                        },
                        error: function (data) {
                            layui.use('layer', function() {
                                var layer = layui.layer;
                                layer.msg('删除失败！', {icon: 2});
                            });
                        }
                    })
                    layer.close(index);
                });
            }
        });



        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });




        //监听动态权限操作操作
        form.on('switch(sexDemo)', function(obj){
            //layer.tips(this.value + ' ' + this.name + '：'+ obj.elem.checked, obj.othis);
            //alert(obj.elem.checked)//开关状态
            //alert(this.value)//动态ID
            //check框控制代码;开放转隐藏传入的值将会是0，反之为1
            var switchStatus=obj.elem.checked;
            var MomentID=this.value
            //alert((switchStatus==true)?1:0)
            $.ajax({
                ansyc: false,//是否异步发送
                type: "GET",
                url: "/controller/setMomentLimit",//指向loginCheck处理器
                data: {
                    "switchStatus":(switchStatus==true)?1:0,
                    "MomentID":MomentID
                },
                dataType: "json",
                success: function (data) {
                    layui.use('layer', function() {
                        var layer = layui.layer;
                        //icon:0为惊叹号，1为勾。2为叉，3为问号，4为锁，5为不开心
                        layer.msg('操作成功！', {icon: 1});
                    });
                },
                error: function (data) {
                    layui.use('layer', function() {
                        var layer = layui.layer;
                        layer.msg('操作失败！', {icon: 2});
                    });
                }
            })

        });
    })

</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<script type="text/html" id="switchTpl">
    <!--默认d为获取到的data，所以可以直接获取到share值，通过share值使用三目运算符简洁的标识check框是否选中-->
    <input type="checkbox" name="limit" value="{{d.id}}" lay-skin="switch" lay-text="隐藏|开放" lay-filter="sexDemo" {{ d.share==0 ? '':'checked'}}>
</script>
</html>



