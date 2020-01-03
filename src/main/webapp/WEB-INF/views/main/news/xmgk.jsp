<%--
  Created by IntelliJ IDEA.
  User: Du
  Date: 2019/1/16
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<div style="clear: both"></div>
<!--项目公开信息列表部分-->
<div class="gzdt">
    <div class="gzdt_tit">
        <div class="gzdt_le">
            <p>项目公开信息</p>
        </div>
        <div class="gzdt_rig">
            <p>当前位置：首页 >项目公开信息</p>
        </div>
    </div>

    <div class="kpwj_list">
        <div class="kpwj_top">
            <div class="kpjb_tit">
                <p>序号</p>
                <a href="##"><p>项目名称</p></a>
                <p>项目地址</p>
                <p>区属</p>
                <p>建设单位</p>

            </div>

        </div>
        <style type="text/css">
            .kpwj_cont p{

                text-align:center;
                float:left;
                font-size:12px;
                color:#666666;
                width: 150px;
                line-height:28px;
            }
        </style>
        <div class="kpwj_xx">
             <% int i=0; %>
            <c:forEach begin="0" end="10">
            <div class="kpwj_cont">
                <p><%=++i%></p>
                <p>同心家园六期</p>
                <p>三亚市凤凰路妙林田洋片区</p>
                <p>凤凰镇</p>
                <p>三亚市住房和城乡建设局</p>
            </div>
            </c:forEach>
        </div>
    </div>


</div>
<!--尾部-->
<%@include file="../common/footer.jsp"%>