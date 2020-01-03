<%--
  Created by IntelliJ IDEA.
  User: Du
  Date: 2019/1/7
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../common/header.jsp"%>
<div style="clear: both"></div>
<!--新闻列表-->
<div class="gzdt">
	<div class="gzdt_tit">
		<div class="gzdt_le">
			<p>${title}</p>
		</div>
		<div class="gzdt_rig">
			<p>当前位置：首页 > ${title}</p>
		</div>
	</div>

	<div class="gzdt_list">
	</div>
	<%--<div class="paging" style="width: 480px;">--%>
	<%--<div class="paging_bg2" id="01">--%>
	<%--<a href="javascript:"><p class="paging_p1">首页</p></a>--%>
	<%--</div>--%>
	<%--<div class="paging_bg1">--%>
	<%--<a href="javascript:"><p class="paging_p2" id="02">上一页</p></a>--%>
	<%--</div>--%>
	<%--<div class="paging_bg1">--%>
	<%--<a href="javascript:"><p class="paging_p2" id="03">下一页</p></a>--%>
	<%--</div>--%>
	<%--<div class="paging_bg1">--%>
	<%--<a href="javascript:"><p class="paging_p2" id="04">尾页</p></a>--%>
	<%--</div>--%>
	<%--<div class="paging_bg1">--%>
	<%--<a href="javascript:"><p class="paging_p2">5</p></a>--%>
	<%--</div>--%>
	<div class="paging" style="width: 600px;">
		<span style="margin-right: 25px;color: #0099FF;" id="summary"></span>
		<ul id="pagination">
			<li id="01" style="color: #0099FF">首页</li>
			<li id="02">上一页</li>
			<li id="03">下一页</li>
			<li id="04">最后一页</li>
		</ul>
		<div id="select">
			<span style="color: #0099FF;">跳转到 </span>
			<input type="input" name="page_num" style="color: #0099FF">
			<span  style="color: #0099FF;"> 页  </span>
			<input type="button" name="go_btn" style="color: #0099FF" value="跳转">
		</div>
	</div>


</div>
<%@include file="../common/footer.jsp"%>


<script type="text/javascript">
	var page = 1;
	var rows = 12;
	var pages=${pages};
	var keyword=${keyword };
	loadData(page, rows,keyword);
	function loadData(page, rows,keyword){
		$(".list_a").remove(); //每次重新从 API 数据接口获取数据都要先清除原先 `<div>` 的内容
		$.ajax({
			url: "../news/get_search_list",
			type: "POST",

			data:{ page:page, rows:rows,keyword:keyword},
			dataType:'json',
			success:function(data){
				var totalCount=data.newsTotal;
				var list = data.newsList;
				var newsList = data.newsList;
				if(list.length != 0){
					for(var i=0; i<list.length; i++){
						var news_title=list[i].title;
						var news_id=list[i].id;
						var time=list[i].createTime;
						var  d = new Date(time);
						news_time=d.toLocaleString();
						appendData(news_id,news_title,news_time);
					}
					$(".gzdt_list").show();
					$("#paging").show();
					displayFooter(totalCount, pages, page);
				} else{
					$(".gzdt_list").hide();
					$("#paging").hide();
				}
			},
			error:function(){
				//error handle function
			}
		});
	}


	function appendData(news_id,news_title,news_time){
		var text='<div class="list_a">';
		text+='<div class="list_jt"><img src="../resources/main/images/list_a.gif" width="5" height="7" ></div>';
		text+='<div class="list_tit"><a target="_blank" class="list01" href="../news/detail?id='+news_id+'" title="">'+news_title+'</a></div>';
		text+='<div class="list_time"><time class="">'+news_time+'</time></div>';
		text+='</div>';
		$(".gzdt_list").append(text);
	}

	function displayFooter(totalCount,page){
		var newText = '共' + totalCount + '条，' + '第' + page + '页，' + '共' +pages + '页';
		$("#summary").text(newText);
	}

</script>

<script type="text/javascript">
	$("input[name='page_num']").keydown(function(e){
		if(e.keyCode == 13){
			$("input[name='go_btn']").click();
		}
	});

	$("input[name='go_btn']").click(function(){
		var goPage = $("input[name='page_num']").val();
		if(goPage >= 1 && goPage <=pages && goPage != page){
			page = goPage;
			loadData(page, rows);
		}else if(goPage == page){
			return false;
		}
		else{
			alert("该页面不存在，请重新输入!");
			return false;
		}
	});

	$("#01").click(function(){
		page = 1;
		loadData(page, rows,keyword);
	});

	$("#04").click(function(){
		page = pages;
		loadData(page, rows,keyword);
	});

	$("#02").click(function(){
		if(page == 1){
			return false;
		} else{
			page--;
			loadData(page, rows,keyword);
		}
	});

	$("#03").click(function(){
		if(page == pages){
			alert("已是最后一页！")
			return false;
		} else{
			page++;
			loadData(page, rows,keyword);
		}
	});


</script>

