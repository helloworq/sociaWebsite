<!--
  Created by IntelliJ IDEA.
  User: 12733
  Date: 2019/08/25
  Time: 19:13
  To change this template use File | Settings | File Templates.
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>登陆成功！</title>
    <link href="css/bootstrap-combined.min.css" rel="stylesheet">
    <link href="css/layoutit.css" rel="stylesheet">
    <link href="css/mycss.css" rel="stylesheet">
    <script type="text/javascript" src="js/jquery-2.0.0.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.js"></script>
    <script type="text/javascript" src="js/jquery.ui.touch-punch.min.js"></script>
    <script type="text/javascript" src="js/jquery.htmlClean.js"></script>
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="ckeditor/config.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
</head>

<script type="text/javascript">
    var currentPage=1;
    window.onload = function () {
        var myul = document.getElementById("myul");
        myul.onclick = function (event) {
            event.preventDefault();
            //alert(event.target.innerText);
            var getMSG = event.target.innerText;
            //alert("<<".length)
            //document.getElementById("txt").innerHTML=event.target.innerHTML;
            //凭借下面两个页码数据可以判断点击的具体位置
            //currentPageIndex   firstPageIndex   maxPageIndex
            var currentPageIndex = Number(event.target.innerText);//当前点击页码
            var firstPageIndex = Number(document.getElementById("pageIndex1").innerText);//当前数字索引第一个页码
            var maxPageIndex = Number(document.getElementById("MaxNum").innerText);//最大页码
            //第一部分，如果点击的是数字索引则开始判断
            if (!isNaN(currentPageIndex)) {
                //alert(document.getElementById("firstNum").innerText);
                //如果点击的是前四个索引则开始判断，下面if里的条件确保选择的是前四个索引
                if (currentPageIndex - firstPageIndex < 4) {
                    //document.getElementById("txt").innerHTML=currentPage;
                    //如果选择的是当前数字索引第一个页码则全部页码减一以达到页码更新的功能
                    if (firstPageIndex != 1 && (currentPageIndex - firstPageIndex == 0)) {
                        for (var i = 1; i <= 5; i++) {
                            document.getElementById("pageIndex" + i).innerText--;
                        }
                    }
                    currentPage = Number(event.target.innerText);
                }
                //如果是点击第五个索引则全部索引加一,方法为获取当前页码值+2。再循环减一
                else if (currentPageIndex - firstPageIndex == 4 && currentPageIndex != maxPageIndex) {
                    var addedNum = currentPageIndex + 2;
                    for (var i = 5; i > 0; i--) {
                        document.getElementById("pageIndex" + i).innerText = --addedNum;
                    }
                    currentPage = document.getElementById("pageIndex5").innerText;
                    //document.getElementById("txt").innerHTML=document.getElementById("pageIndex5").innerText;
                }
                else if(currentPageIndex==maxPageIndex)
                    currentPage=maxPageIndex;
            }

            //左移符右移符情况
            else {
                if (getMSG == "<<") {
                    for (var i = 1; i <= 5; i++) {
                        document.getElementById("pageIndex" + i).innerText = String(i);
                    }
                    currentPage = 1;
                } else if (getMSG == ">>") {
                    var prev = maxPageIndex;
                    for (var i = 5; i > 0; i--) {
                        document.getElementById("pageIndex" + i).innerText = String(prev--);
                    }
                    //document.getElementById("txt").innerText=maxPageIndex;
                    currentPage = maxPageIndex;
                }else if(getMSG == "MAX->"){

                }

            }


            //获取需要替换部分的html内容，并且去除所有空格符
            //alert("Ajax开始,获取到的页码数据为" + currentPage)
            $.ajax({
                ansyc: false,//是否异步发送
                type: "POST",
                url: "/controller/getVideoInfo",//指向loginCheck处理器
                data: {"pageIndex": currentPage},//目标url
                dataType: "json",
                success: function (data) {
                    if (data.msg != null) {
                        for (var i = 1; i <= 15; i++) {
                            //清空原内容，添加进去新内容
                            var title = document.getElementById("font_h" + i).innerHTML;//.trim().replace(/\s/g, "")
                            document.getElementById("font_h" + i).innerHTML = title.replace(title, data.msg[i].videoName)

                            var rest = document.getElementById("text_p" + i).innerHTML;//.trim().replace(/\s/g, "")
                            document.getElementById("text_p" + i).innerHTML = rest.replace(rest, "时长：" + data.msg[i].videoLength + "<br>" +
                                "作者：" + data.msg[i].videoProducer + "<br>" +
                                "描述：" + data.msg[i].videoDescribe)

							document.getElementById("pic"+i).src="img/"+i+".jpg"
                        }
                    } else
                        alert("ajax请求成功但是链接出现了问题" + data.msg);
                },
                error: function (data) {
                    alert("ajax请求失败" + data.msg);
                }
            })


        }
    }


</script>



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
		background-image:url(/img/Main_desk.jpg);
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
		<div class="span12">
			<div class="navbar navbar-inverse">
				<div class="navbar-inner">
					<div class="container-fluid">
						<a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar">
							<span class="icon-bar"></span><span class="icon-bar"></span>
							<span class="icon-bar"></span></a> <a href="#" class="brand">哔哩哔哩</a>
						<div class="nav-collapse collapse navbar-responsive-collapse">
							<ul class="nav">
								<li class="active">
									<a href="#">主页</a>
								</li>
								<li>
									<a href="#">链接</a>
								</li>
								<li>
									<a href="#">链接</a>
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">下拉导航1</a>
										</li>
										<li>
											<a href="#">下拉导航2</a>
										</li>
										<li>
											<a href="#">其他</a>
										</li>
										<li class="divider">
										</li>
										<li class="nav-header">
											标签
										</li>
										<li>
											<a href="#">链接1</a>
										</li>
										<li>
											<a href="#">链接2</a>
										</li>
									</ul>
								</li>
							</ul>
							<ul class="nav pull-right">
								<li>
									<a href="#">右边链接</a>
								</li>
								<li class="divider-vertical">
								</li>
								<li class="dropdown">
									<a data-toggle="dropdown" class="dropdown-toggle" href="#">下拉菜单<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">下拉导航1</a>
										</li>
										<li>
											<a href="#">下拉导航2</a>
										</li>
										<li>
											<a href="#">其他</a>
										</li>
										<li class="divider">
										</li>
										<li>
											<a href="#">链接3</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="row-fluid">

		<div class="span4">
			<div class="accordion" id="accordion-694729">


				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-694729" href="#accordion-element-616113">选项卡 #1</a>
					</div>
					<div id="accordion-element-616113" class="accordion-body in collapse">
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
					</div>
				</div>

				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-694729" href="#accordion-element-312547">选项卡 #2</a>
					</div>
					<div id="accordion-element-312547" class="accordion-body collapse">
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
					</div>
				</div>

				<div class="accordion-group">
					<div class="accordion-heading">
						<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-694729" href="#accordion-element-11111">选项卡 #3</a>
					</div>
					<div id="accordion-element-11111" class="accordion-body collapse">
						<div class="accordion-inner">
							功能块...
						</div>
						<div class="accordion-inner">
							功能块...
						</div>
					</div>
				</div>


			</div>


            <!--按钮按钮-->
			<button class="btn btn-block btn-success" type="button" id="test_sub"
                    onclick="printMsg()">按钮</button>
            <!--按钮按钮-->


		</div>


		<div class="span8">
			<div class="carousel slide" id="carousel-3806">
				<ol class="carousel-indicators">
					<li class="active" data-slide-to="0" data-target="#carousel-3806">
					</li>
					<li data-slide-to="1" data-target="#carousel-3806">
					</li>
					<li data-slide-to="2" data-target="#carousel-3806">
					</li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img alt="" src="img/3.jpg" />
						<div class="carousel-caption">
							<h4>
								棒球
							</h4>
							<p>
								棒球运动是一种以棒打球为主要特点，集体性、对抗性很强的球类运动项目，在美国、日本尤为盛行。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/3.jpg" />
						<div class="carousel-caption">
							<h4>
								冲浪
							</h4>
							<p>
								冲浪是以海浪为动力，利用自身的高超技巧和平衡能力，搏击海浪的一项运动。运动员站立在冲浪板上，或利用腹板、跪板、充气的橡皮垫、划艇、皮艇等驾驭海浪的一项水上运动。
							</p>
						</div>
					</div>
					<div class="item">
						<img alt="" src="img/3.jpg" />
						<div class="carousel-caption">
							<h4>
								自行车
							</h4>
							<p>
								以自行车为工具比赛骑行速度的体育运动。1896年第一届奥林匹克运动会上被列为正式比赛项目。环法赛为最著名的世界自行车锦标赛。
							</p>
						</div>
					</div>
				</div> <a data-slide="prev" href="#carousel-3806" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-3806" class="right carousel-control">›</a>
			</div>
		</div>
	</div>



	<div class="row-fluid">
		<div class="span4">
		</div>
		<div class="span8">
			<div class="row-fluid">
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic1" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h1">
									嵌入媒体标题
								</h4>
								<p id="text_p1">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic2" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h2">
									嵌入媒体标题
								</h4>
								<p id="text_p2">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic3" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h3">
									嵌入媒体标题
								</h4>
								<p id="text_p3">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
				</div>
				<div class="span4">
				</div>
				<div class="span4">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic4" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h4">
									嵌入媒体标题
								</h4>
								<p id="text_p4">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic5" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h5">
									嵌入媒体标题
								</h4>
								<p id="text_p5">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic6"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h6">
									嵌入媒体标题
								</h4>
								<p id="text_p6">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
				</div>
				<div class="span4">
				</div>
				<div class="span4">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic7"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h7">
									嵌入媒体标题
								</h4>
								<p id="text_p7">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic8"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h8">
									嵌入媒体标题
								</h4>
								<p id="text_p8">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic9" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h9">
									嵌入媒体标题
								</h4>
								<p id="text_p9">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
				</div>
				<div class="span4">
				</div>
				<div class="span4">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic10"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h10">
									嵌入媒体标题
								</h4>
								<p id="text_p10">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic11" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h11">
									嵌入媒体标题
								</h4>
								<p id="text_p11">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic12"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h12">
									嵌入媒体标题
								</h4>
								<p id="text_p12">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
				</div>
				<div class="span4">
				</div>
				<div class="span4">
				</div>
			</div>
			<div class="row-fluid">
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic13" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h13">
									嵌入媒体标题
								</h4>
								<p id="text_p13">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  id="pic14" width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h14">
									嵌入媒体标题
								</h4>
								<p id="text_p14">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg" id="pic15"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading" id="font_h15">
									嵌入媒体标题
								</h4>
								<p id="text_p15">时长：<br>
									作者：<br>
									描述：</p>
							</font>
						</div>
					</div>
				</div>
			</div>


			<div class="row-fluid">
				<div class="span12">
					<div class="pagination pagination-centered">
						<ul id="myul">
							<li>
								<a href="#"><<</a>
							</li>

							<li>
								<a href="#" id="pageIndex1">1</a>
							</li>
							<li>
								<a href="#" id="pageIndex2">2</a>
							</li>
							<li>
								<a href="#" id="pageIndex3">3</a>
							</li>
							<li>
								<a href="#" id="pageIndex4">4</a>
							</li>
							<li>
								<a href="#" id="pageIndex5">5</a>
							</li>
							<li>
								<a href="#">MAX-></a>
							</li>
							<li>
								<a href="#" id="MaxNum">99</a>
							</li>

							<li>
								<a href="#">>></a>
							</li>
						</ul>
					</div>
				</div>
			</div>


		</div>
	</div>
</div>


</body>
</html>