<%--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2019/09/21
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<!--%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<center>
    <p>登陆系统</p>
    <form action="/MySSM/controller/welcome" method="post">
        userName : <input name="userName" type="text"/><br>
        <br>
        password : <input name="password" type="password"/><br>
        <input type="submit" value="submit"/><br>
    </form>
</center><br>
<center><a href="/war/MySSM/controller/signInPage"><button>新用户注册</button></a></center>
</body>
</html-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>请登录</title>
    <link href="/css/bootstrap-combined.min.css" rel="stylesheet">
    <link href="/css/layoutit.css" rel="stylesheet">
    <link href="/css/mycss.css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="/js/jquery.htmlClean.js"></script>
    <script type="text/javascript" src="/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/ckeditor/config.js"></script>
    <script type="text/javascript" src="/js/scripts.js"></script>
</head>
<body>

<!--背景配置放在HTML文件中，不放在css文件，不然每个页面都得配置一个css文件-->
<style type="text/css">
    body{
        margin:0; padding:0;
        position:absolute;
        top:0;
        left:0;
        height:100%;
        width:100%;
        background-image:url(/img/background.jpg);
        background-position: center 0;
        background-repeat: no-repeat;
        background-attachment:fixed;
        background-size: cover;
        -webkit-background-size: cover;/* 兼容Webkit内核浏览器如Chrome和Safari */
        -o-background-size: cover;/* 兼容Opera */
        zoom: 1;
    }
</style>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span6">
        </div>
        <div class="span6">
        </div>
    </div>
    <div class="row-fluid">
        <div class="span6">
        </div>
        <div class="span6">
        </div>
    </div>
    <div class="row-fluid">
        <div class="span7">
        </div>
        <div class="span5">
            <h3 class="text-center">
                居然之家
            </h3>
            <form class="form-horizontal" action="/MySSM/controller/welcome" method="post">
                <div class="control-group">
                    <label class="control-label">邮箱</label>
                    <div class="controls">
                        <input name="userName" type="text" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">密码</label>
                    <div class="controls">
                        <input name="password" type="password" />
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="checkbox"><input type="checkbox" /> Remember me</label>
                        <button type="submit" class="btn">登陆</button>
                    </div>
                </div>
            </form>
            <div class="row-fluid">
                <div class="span4">
                </div>
                <div class="span4">
                    <a href="/MySSM/controller/signInPage"><button class="btn" type="submit">新用户注册</button></a>
                </div>
                <div class="span4">
                </div>
            </div>
        </div>
    </div>
</div>















</body>
</html>
