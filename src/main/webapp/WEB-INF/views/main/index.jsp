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
        <link rel="stylesheet" href="../resources/layui-v2.4.5/layui/css/layui.css"  media="all">
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
<body >
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
        <!--first_1-->
        <div class="first_1">
            <div id="playBox">
                <div class="pre"></div>
                <div class="next"></div>
                <div class="smalltitle">
                    <ul>
                        <li class="thistitle"></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <ul class="oUlplay">
                    <c:forEach items="${newstop5}" var="news" begin="0" end="2">
                        <li><a href="../news/detail?id=${news.id}" target="_blank"><img src="${news.photo}" width="320" height="250" align="center"><p style="margin: 0px">${news.title}</p></a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="list_right" style="width: 665px">
                <h4 class="h_tit" style="width: 665px">
                    <c:forEach items="${newsCategoryList }" var="newsCategory">
                        <c:if test="${newsCategory.sort==0}">
                            <i>${newsCategory.name}</i>
                            <span class="fr mr20"><a href="../news/category_list?cid=${newsCategory.id}">更多>></a></span>
                        </c:if>
                    </c:forEach>
                </h4>
                <ul>
                    <c:forEach items="${newss}" var="news0" begin="0" end="6">
                        <c:if test="${news.categoryId==newsCategory.id}">
                            <li style="width:665px "><a style="width: 500px" href="../news/detail?id=${news0.id}" target="_blank">${news0.title}</a><em style="margin-right: 30px"><fmt:formatDate value="${news0.createTime }" pattern="yyyy-MM-dd" /></em></li>

                        </c:if>
                    </c:forEach>

                </ul>
            </div>

        </div>
        <!--first_1-end-->
        <!--thr_3-start-->
        <div class="thr_3">
            <div class="s_left" >
                <h4 class="h_tit">
                    <c:forEach items="${newsCategoryList }" var="newsCategory">
                        <c:if test="${newsCategory.sort==1}">
                            <i>${newsCategory.name}</i>
                            <span class="fr mr20"><a href="../news/category_list?cid=${newsCategory.id}">更多>></a></span>
                        </c:if>
                    </c:forEach>
                </h4>
                <ul>

                    <c:forEach items="${notice}" var="news1" begin="0" end="6">
                        <c:if test="${news.categoryId==newsCategory.id}">
                            <li><a href="../news/detail?id=${news1.id}" target="_blank">${news1.title}</a><em><fmt:formatDate value="${news1.createTime }" pattern="yyyy-MM-dd" /></em></li>

                        </c:if>
                    </c:forEach>

                </ul>
            </div>

            <div class="list_right1" >
                <h4 class="h_tit">
                    <c:forEach items="${newsCategoryList }" var="newsCategory">
                        <c:if test="${newsCategory.sort==2}">
                            <i>${newsCategory.name}</i>
                            <span class="fr mr20"><a href="../news/category_list?cid=${newsCategory.id}">更多>></a></span>
                        </c:if>
                    </c:forEach>
                </h4>
                <ul>

                    <c:forEach items="${dynamic}" var="news1" begin="0" end="6">
                        <c:if test="${news.categoryId==newsCategory.id}">
                            <li><a href="../news/detail?id=${news1.id}" target="_blank">${news1.title}</a><em><fmt:formatDate value="${news1.createTime }" pattern="yyyy-MM-dd" /></em></li>

                        </c:if>
                    </c:forEach>

                </ul>
            </div>
        </div>
        <!--thr_3-end-->
        <!--sec_2-start-->
        <div class="sec_2">

            <div class="user_login">
                <h4 class="h_tit" >
                    <i class="fl">保障房申报</i><a  class="fl"href="javascript:void(0);"><i><img src="../resources/main/images/ico_down.png" width="7" height="4"/></i></a>
                </h4>
                <div class="form_log" align="center" >
                    <a target="_blank" href="http://59.50.44.86:9044/"><img src="../resources/main/images/9.png" align="middle" width="140" height="150"></a>
                    <a target="_blank" href="http://59.50.44.86:9044/"><p  ><input class="log_btn" type="button" value="保障房申报入口"/></p></a>
                </div>
            </div>
            <div class="s_left">
                <h4 class="h_tit">
                    <i>项目公开信息</i><span class="fr mr20"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/prolist.aspx">更多>></a></span>
                </h4>
                <div class="bor">
                    <table width="746" border="0" class="tab_border" cellspacing="0" cellpadding="0">
                        <thead>
                        <tr>
                            <th width="10%">序号</th>
                            <th width="45%">项目名称</th>
                            <th width="45%">项目地址</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td nowrap="nowrap" align="center">1</td>
                            <td nowrap="nowrap"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/probasic.aspx?pid=D0F816F49BED4E80B6D510932E24E633&parcelno=09-09-13&no=">同心家园一期</a></td>
                            <td nowrap="nowrap">三亚市迎宾路345号</td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" align="center">2</td>
                            <td nowrap="nowrap"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/probasic.aspx?pid=E903D8DF4755479BB25821662151C7A8&parcelno=18-03-14&no=">同心家园二期</a></td>
                            <td nowrap="nowrap">三亚市吉阳区同心路</td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" align="center">3</td>
                            <td nowrap="nowrap"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/probasic.aspx?pid=F94F3979C05C448988EF30D6D036D18B&parcelno=15-11-62&no=3">同心家园三期</a></td>
                            <td nowrap="nowrap"> 三亚市落笔洞路</td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" align="center">4</td>
                            <td nowrap="nowrap"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/probasic.aspx?pid=1870A3A4F4614020A2177EA727286EBF&parcelno=A-22-2&no=4">同心家园四期</a></td>
                            <td nowrap="nowrap">三亚市吉阳区新月路和迎春路交叉口附近</td>
                        </tr>
                        <tr>
                            <td nowrap="nowrap" align="center">5</td>
                            <td nowrap="nowrap"><a href="http://153.0.163.75:9052/syzs/JianGuan/GongShi/probasic.aspx?pid=1870A3A4F4614020A2177EA727286EBF&parcelno=A-22-2&no=4">同心家园五期</a></td>
                            <td nowrap="nowrap">三亚市吉阳区海罗西路2号</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
            <!--sec_2-end-->


            <div class="footer">
                <div class="f_line_top"></div>
                <span class="f_txt">

                    </span>
            </div>
        </div>
    </div>
</div>

<script>

</script>
</body>
</html>
