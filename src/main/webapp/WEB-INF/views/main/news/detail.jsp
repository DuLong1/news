<%--
  Created by IntelliJ IDEA.
  User: Du
  Date: 2019/1/7
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<div style="clear: both"></div>
<!--图片要闻列表部分-->
<div class="gzdt">
    <div class="gzdt_tit">
        <div class="dtnr_le">
            <p>您当前的位置：首页 -> ${name} </p>
        </div>
    </div>
    <div class="dt_cont">
        <div class="dt_tit">
            <p class="title_p">${news.title}</p>
        </div>
        <div class="dt_xx" >
            <div class="dt_time">
                <p class="time_p1">时间：<em style="font-size: 12px"> <fmt:formatDate value="${news.createTime }" pattern="YYYY-MM-dd" /></em></p>
            </div>
            <div class="dt_time">
                <p class="time_p2">&nbsp;&nbsp;来源：${news.tags}</p>
            </div>
        </div>
        <div class="line"></div>
        <div class="news_content">
            <div>
                <article class="article-content">
                    ${news.content }
                </article>
            </div>

        </div>
    </div>
    <div class="content_main_next">
        <ul>
            <li >上一篇：<a id="back" href="../news/detail?id=${newsBack.id}">${newsBack.title}</a></li>
            <li>下一篇：<a id="front" href="../news/detail?id=${newsFront.id}">${newsFront.title}</a></li>
        </ul>
    </div>
</div>
<script type="text/javascript">
    window.onload=function(){
        if (${newsFront==null}) {
            $("#front").text("无");
            $("#front").attr('href','##');
        }

    }
    window.onload=function(){
        if (${newsBack==null}) {
            $("#back").text("无");
            $("#back").attr('href','##');
        }

    }
</script>
<%@include file="../common/footer.jsp"%>