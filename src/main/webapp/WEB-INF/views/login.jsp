<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>后台管理-登陆</title>
    <link rel="stylesheet" href="/css/layui/css/layui.css">
    <link rel="stylesheet" href="/css/admin.css">
    <script src="/css/layui/layui.js"></script>
    <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
</head>
<body>
<script>
    function checkInput() {
        var inputAccount=document.getElementById("account").value;
        var inputPassword=document.getElementById("password").value;
        var inputCaptcha=document.getElementById("captcha").value;

        if (inputAccount==""){
            alert("请输入账号")
        }
        else if(inputPassword==""){
            alert("请输入密码")
        }
        else if(inputCaptcha==""){
            alert("请输入验证码")
        }
        else if(inputCaptcha.length!=4){
            alert("请输入合法长度的验证码")
        }
        else {
            $.ajax({
                ansyc: false,//是否异步发送
                type: "POST",
                url: "/controller/loginCheck",//指向loginCheck处理器
                data: {
                       "inputPassword": inputPassword,
                       "inputAccount": inputAccount,
                       "inputCaptcha": inputCaptcha
                },
                dataType: "json",
                success: function (data) {
                    alert("ajax成功" + data.msg)
                    //window.location.href="/myFriends"
                    if(data.msg=="success")
                        window.location.href="/myFriends";
                    else
                        alert("密码错误");
                },
                error: function (data) {
                    alert("ajax请求失败");
                    alert(data.msg)
                }
            })
        }
}
</script>
<div id="container">

    <div class="admin-login-background">
        <!--div class="admin-header">
        <img src="img/Main_desk.jpg" class="admin-logo">
        </div-->

            <div>
                <i class="layui-icon layui-icon-username admin-icon admin-icon-username"></i>
                <input type="text" name="username" placeholder="请输入用户名" id="account"
                       autocomplete="off"
                       class="layui-input admin-input admin-input-username">
            </div>
            <div>
                <i class="layui-icon layui-icon-password admin-icon admin-icon-password"></i>
                <input type="password" name="password" id="password"
                       placeholder="请输入密码"
                       autocomplete="off"
                       class="layui-input admin-input">
            </div>
            <div>
                <input type="text" name="verify" id="captcha"
                       placeholder="请输入验证码"
                       autocomplete="off"
                       class="layui-input admin-input admin-input-verify">
                <img class="admin-captcha" src="/get/captcha" onclick="updateVerify()">
            </div>
            <div>
                <button class="layui-btn admin-button-zhuce">注册</button>
                <button class="layui-btn admin-button-denglu" onclick="checkInput()">登录</button>
            </div>
    </div>
</div>
</body>

</html>