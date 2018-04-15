<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@include file="../common/pageTaglibs.jsp"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
   
    <title>论坛系统BBS</title>
    <link href="${rootPath}/cs/qq/index.css" rel="stylesheet" />
    <link href="${rootPath}/cs/qq/bootstrap.min.css" rel="stylesheet" />
    <script src="${rootPath}/js/qq/index.js"></script>
    <script src="${rootPath}/js/qq/bootstrap.js"></script>
    <script src="${rootPath}/js/qq/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<style>
		.pagingWhole{
			margin-left: 160px;
		    min-width: 1110px;
		    padding: 20px 0;
		    text-align: center;
		    font: 10px -apple-system, "BlinkMacSystemFont", "Helvetica Neue", "Arial", "PingFang SC", "Hiragino Sans GB", "STHeiti", "Microsoft YaHei", "Microsoft JhengHei", "Source Han Sans SC", "Noto Sans CJK SC", "Source Han Sans CN", "Noto Sans SC", "Source Han Sans TC", "Noto Sans CJK TC", "WenQuanYi Micro Hei", SimSun, sans-serif;
		    color: #696969;
		    position: absolute;
		    margin-top: 50px; 
		    width: 1701px;
				   }
	    table tr{
			height:34px;
	
				}
		table td{
			border-bottom: 1px solid #eeeeee;
			} 
		.btn-s1{
			float:right;
			size:20;
			color:#61FE00;
			}
		.btn-s1-f1{
			color:#FF00FE;
		}
		.btn-s1 span{
		font-size:18px;
		}
				   
	</style>
</head>
<body>
<!-- 左菜单栏 -->
<nav id="left-nav">
    <div id="logo">
        <a href="home.php"><img src="../image/logo.jpg"></a>
    </div>
    <div id="user-info">
        <div class="have-login" style="display: block;">
            <div class="portrait-container">
                <img class="portrait pic" src="../image/portrait-fem.png">
            </div>
            <p class="username">
                <a class="user-list-trigger" data-action="user-list-trigger"></a>
                <span data-role="login-username">${user.username }</span>
               
            </p>
            
            <ul id="detail-list" class="ul-top">
                <li><span class="glyphicon glyphicon-user headFlag"></span><span class="headColor">&nbsp;昵称:</span><span>${user.nickname }</span></li>
                <li><span class="glyphicon glyphicon-send headFlag"></span><span class="headColor">&nbsp;帖子数:</span><span>${user.postNum }</span></li>
                <li><span class="glyphicon glyphicon-heart-empty headFlag"></span><span class="headColor">&nbsp;粉丝数:</span><span>${user.beFocusedNum }</span></li>
                <li><span class="glyphicon glyphicon-tree-deciduous headFlag"></span><span class="headColor">&nbsp;收藏数:</span><span>${user.collectNum}</span></li>
                <li><span class="glyphicon glyphicon-tint headFlag"></span><span class="headColor">&nbsp;我的关注:</span><span>${user.focusOtherNum }</span></li>
                
                    
            </ul>
           
            <a href="#" class="sub-button red">
                <span>重填注册单</span>
            </a>
        </div>
        <div class="not-login" style="display: none;">
            <form id="loginform">
                <div class="portrait-container">
                    <img class="portrait pic" src="../image/icon-weidenglu.png">
                </div>
                <div class="input-wrapper">
                    <input type="text" placeholder="用户名 / username" name="username" id="username">
                </div>
                <div class="input-wrapper">
                    <input type="password" placeholder="密码 / password" name="password">
                </div>
                <div class="input-wrapper">
                    <input type="checkbox" name="keepalive" data-role="keepalive" id="form-remember-checkbox">
                    <label for="form-remember-checkbox">下次自动登录</label>
                </div>
                <div class="btn-group">
                    <a class="btn" id="btn-login">登录</a>
                    <a class="btn" id="btn-register" data-no-pjax="" href="register.php" target="_blank">注册</a>
                </div>
                <a class="white-link" data-no-pjax="" href="reset-password-req.php">找回密码</a>
            </form>
        </div>
    </div>
    <div id="link-buttons">
        <a href="../homePage.jsp" id="tab_home" class="cur"><span class="glyphicon glyphicon-file " style="color:#FEE94E"></span>&nbsp;&nbsp;&nbsp;首页</a>
        <a href="tourist" id="tab_favorite" class=""><span class="glyphicon glyphicon-align-justify nav-fon"></span>&nbsp;&nbsp;&nbsp;版面</a>
        <a href="#" id="tab_zone"><span class="glyphicon glyphicon-star-empty nav-fon"></span>&nbsp;&nbsp;&nbsp;我的收藏</a>
        <a href="#" id="tab_favorite_collection"><span class="glyphicon glyphicon-tint nav-fon"></span>&nbsp;&nbsp;&nbsp;我的关注</a>
        <a href="#" id="tab_friend1" class=""><span class="glyphicon glyphicon-send nav-fon"></span>&nbsp;&nbsp;&nbsp;我的帖子</a>
        <a href="bas-publishPost.jsp"  id="tab_friend2" class=""><span class="glyphicon glyphicon-pencil nav-fon"></span>&nbsp;&nbsp;&nbsp;发表帖子</a>
        <a href="#" id="tab_friend" class=""><span class="glyphicon glyphicon-user nav-fon"></span>&nbsp;&nbsp;&nbsp;个人信息</a>
    </div>
</nav>
<!-- 左菜单栏 -->
<!-- 头部菜单 -->
<nav id="top-nav">
    <div class="wrapper">
        <div class="inner-wrapper">
            <div class="search-box bdwm-search-box">
                <input class="search-ipt" type="text" placeholder="搜索帖子" >
                <img class="search-btn" src="../image/iconfont-sousuo.png" onclick="searchPost();">
            </div>
            <div class="top-right-links">
                <a href="#">帮助中心</a>
            </div>
        </div>
    </div>
</nav>
<!-- 头部菜单 -->
<div class="pagingWhole">
				<%-- <span id="b_id" style="display:none" >${b_id}</span><span id="p_id" style="display:none">${p_id}</span><span id="pageName" style="display:none">${pageName}</span><span id="blockName" style="display:none">${blockName}</span> --%>
				<div id="paging">
					<p>
						<a href="#" onclick="paging(1);return false;"><span class="glyphicon glyphicon-step-backward"></span>上一页</a>&nbsp;&nbsp;
						<span>当前页:<span id="nowPage">${nowPage}</span></span>/<span id="allPage">${allCount }</span>
						<span><input class="form-control" id="inPage" value="${inp}" style="width:50px;display:inline;" onkeyup="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}"  oninput="if(this.value.length==1){this.value=this.value.replace(/[^1-9]/g,'')}else{this.value=this.value.replace(/\D/g,'')}" /></span>
						<a href="#" onclick="paging(2);return false;"><span class="glyphicon glyphicon-hand-left"></span>跳转</a>
						&nbsp;&nbsp;<a href="#" onclick="paging(3);return false;"><span class="glyphicon glyphicon-step-forward"></span>下一页</a><span class="pageJump" style="color:red;"></span>
					</p>
				</div>
				<div class="paging-content">
				<table class="" id="my-table" style="margin:0 auto;">
					<c:forEach items="${posts}" var="p" varStatus="ps">


						
						<tr>


							<td><a href="goToPost?b_id=${p.block.id}&p_id=${p.postPage.id}&pageName=${p.postPage.pagename}&po_id=${p.id}&blockName=${p.block.blockname}"><span class="glyphicon glyphicon-arrow-right"></span>&nbsp;&nbsp;
								<span class="wc-span2 ">帖子主题:</span> <span class="wc-span1-v wc-topic">${p.title }</span></a>&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							
							<td><span class="wc-span2 wc-table ">时间:</span> <span
								class="wc-span2-v">${p.time }</span>
							</td>
							<td><span class="glyphicon glyphicon-pencil"></span>&nbsp;&nbsp;
								<span class="wc-span2 wc-author wc-table">作者:</span> <span class="wc-span1-v">${p.user.username }</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
							<td>
								<a href="goToPost?b_id=${p.block.id}&p_id=${p.postPage.id}&pageName=${p.postPage.pagename}&po_id=${p.id}&blockName=${p.block.blockname}">
							   <button type="button" class="btn btn-default btn-lg btn-s1">
							  		<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> 查看
							   </button>
							   </a>
							    <%-- <button type="button" class="btn btn-default btn-lg btn-s1 btn-s1-f1" onclick="focusPostHost(${p.id);return false;">
							  		<span class="glyphicon glyphicon-heart-empty" aria-hidden="true"></span> 关注
							   </button> --%>
							</td>
						</tr>

						

						
					</c:forEach>
				</table>
				</div>
				</div>
<!-- 底部 -->
<footer id="footer">
    <p>
        <a data-no-pjax="" href="../123/" target="_blank">常用网站</a> - <a href="#">相关下载</a> - <a href="#">未名站刊</a> - <a href="#">关于我们</a> - <a href="#">联系我们</a> - <a href="#">加入我们</a> - <a href="#">帮助中心</a> - <a href="#">意见反馈</a>
    </p>
    <p>© 2000–2018 北大未名BBS</p>
</footer>
<!-- jQuery (Bootstrap 插件需要引入) -->
	<!-- <script
		src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script> -->
		<script type="text/javascript" src="${rootPath}/js/jquery-3.2.1.js"></script>
	<!-- 包含了所有编译插件 -->
	<script
		src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	<script type="text/javascript">

	$(function(){
		colorShow();
		colorShowAll();
	})
	function colorShow(){
			//$("#a2").css("display","none");
			
			var colors5 = new Array("#FEF104", "#ED1B24", "#8DB1B6", "#BFA656","#2F841C");
			
			
			$(".headColor").each(function(index) {
				$(this).css("color", colors5[index % 5]);
				$(".headFlag").css("color","#FF00FE");
			})
			
		}
	function colorShowAll(){
		//$("#a2").css("display","none");
		var colors = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62");
		var colors1=new Array("#FF5C05", "#FF00FE", "#61FE00");
		var colors2=new Array("#FEEE53", "#FB699A", "#BFA656");
		var colors3=new Array("#FF00FE", "#61FE00");
		var colors4 = new Array("#F7A95E", "#5CAE97", "#8DB1B6", "#E97C62","#FF5C05", "#FF00FE", "#61FE00","#FEEE53", "#FB699A", "#BFA656");
		var colors7 = new Array("#F7A95E", "#E10E0D", "#2553F6", "#00FF01","#FF5C05", "#FF00FE");
		 $(".nav-fon").each(function(index) {
				$(this).css("color", colors7[index % 6]);
			})
		$(".section1").each(function(index) {
			$(this).css("border-top-color", colors[index % 4]);
		})
		$(".hc-span1-v,.wc-span-top").each(function(index) {
			$(this).css("color", colors2[index % 3]);
		})
		$(".hc-span3-v").each(function(index) {
			$(this).css("color", colors1[index % 3]);
		})
		$(".wc-span1,.wc-table").each(function(index) {
			$(this).css("color", colors3[index % 2]);
		})
		$(".wc-topic").each(function(index) {
			$(this).css("color", colors4[index % 10]);
		})
	}
	
	function paging(flag){//alert(1);
		var nowPage=$("#nowPage").html();
		
		var inp=$("#inPage").val();
		
		
		
		if(flag==1){
			
			if(nowPage<=1){
				
			}else{
				nowPage--;
			}
			
		}
		if(flag==2){
			nowPage=$("#inPage").val();
			//inp=$("#inPage").val();
		}
		if(flag==3){
			
			nowPage++;
		}
		$.ajax({
			url:"${rootPath}/baseJsp/postAllPaging",
			data:"nowPage="+nowPage+"&inp="+inp,
			type:"get",
			dataType:"json",
			async:false,
			success:function(){//alert(33);
				//$(".paging-content").load(location.href+" .paging-content");按理有用，但妹达到效果
				/* $(".paging-content").html($(".main").html()) */ /* 没用，只是单纯的把原数据加载，而不能让其重新加载$内容 */
				//window.location.reload();刷新浏览器url，重载，
				 $.ajax({
					url:"index.jsp",
					type:"get",
					dataType:"html",
					success:function(data){
						$("#paging").html($(data).find('#paging').html());//?????为啥直接用最大div：.pagingWhole去处理不行？？，而是分开写
						$(".paging-content").html($(data).find('.paging-content').html());//很经典的处理**，相对于拼接页面，或者取另一个页面
						colorShow();
						colorShowAll();
					},
				 error:function(){
					 alert("error2");
				 }
					
				}) 
			},
			error:function(){
				alert("error1");
			}
			
		});
		
	}
	
	function searchPost(){
		var search=$(".search-ipt").val();
		//alert(2);
		$.ajax({
			url:"${rootPath}/baseJsp/getPostByName",
			data:"search="+search,
			type:"get",
			dataType:"json",
			async:false,
			success:function(){//alert(33);
				//$(".paging-content").load(location.href+" .paging-content");按理有用，但妹达到效果
				/* $(".paging-content").html($(".main").html()) */ /* 没用，只是单纯的把原数据加载，而不能让其重新加载$内容 */
				//window.location.reload();刷新浏览器url，重载，
				 $.ajax({
					url:"index.jsp",
					type:"get",
					dataType:"html",
					success:function(data){
					
						$(".paging-content").html($(data).find('.paging-content').html());//很经典的处理**，相对于拼接页面，或者取另一个页面
						colorShow();
						colorShowAll();
					},
				 error:function(){
					 alert("error2");
				 }
					
				}) 
			},
			error:function(){
				alert("error1");
			}
			
		});
	}
</script>
</body>
</html>