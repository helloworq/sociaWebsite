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
						<a href="404.html" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
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
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
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
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
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
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
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
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
				<div class="span4">
					<div class="media">
						<a href="#" class="pull-left"><img src="img/3.jpg"  width="150" class="media-object" alt='' /></a>
						<div class="media-body">
							<font color="white">
								<h4 class="media-heading">
									嵌入媒体标题
								</h4> 时长：<br>
								作者：<br>
								描述：
							</font>
						</div>
					</div>
				</div>
			</div>


			<div class="row-fluid">
				<div class="span12">
					<div class="pagination pagination-centered">
						<ul>
							<li>
								<a href="#">上一页</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a href="#">下一页</a>
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