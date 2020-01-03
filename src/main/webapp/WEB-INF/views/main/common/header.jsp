<%--
  Created by IntelliJ IDEA.
  User: Du
  Date: 2019/1/6
  Time: 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html>
<head>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>系统首页${projectList.get(0).test1}</title>
		<link href="../resources/main/css/YJUI_Style.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" type="text/css" href="../resources/main/css/style.css">
		<script type="text/javascript" src="../resources/main/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="../resources/main/js/MyCxcPlug.js"></script>
		<!-- 轮播图 开始 -->
		<script type="text/javascript" src="../resources/main/js/lb_jcfc.js"></script>
		<link href="../resources/main/css/lbt1.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="../resources/main/js/lbt1.js"></script>
		<style type="text/css">

		</style>
	</head>
<body   >
<div class="main">
	<div class="indexCont">
		<div class="headerCont">
			<%--<span class="header"><em class="m20">您好，欢迎来到三亚市保障性住房综合信息管理系统！您还未登陆，请<b><a href="login.html" >【登录】</a></b></em></span>--%>
			<span class="fl"><img src="../resources/main/images/top.png" width="1000" height="190"/></span>
			<div class="menu_nav clearfix">
				<ul class="nav_content">
					<li style="margin-left: -20px;"><a href="../index/index">网站首页</a></li>
					<li><a target="_blank" href="http://59.50.44.86:9044/">保障房申报</a></li>
					<c:forEach items="${newsCategoryList }" var="newsCategory">
						<li><a data-cont="${newsCategory.name }" title="${newsCategory.name }" href="../news/category_list?cid=${newsCategory.id }">${newsCategory.name }</a></li>
					</c:forEach>
					<li><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/prolist.aspx">项目公开信息</a></li>


				</ul>

			</div>
		</div>
		<div style="clear: both"></div>