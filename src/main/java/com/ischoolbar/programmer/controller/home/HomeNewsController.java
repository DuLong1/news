package com.ischoolbar.programmer.controller.home;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.News;
import com.ischoolbar.programmer.entity.admin.NewsCategory;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.NewsCategoryService;
import com.ischoolbar.programmer.service.admin.NewsService;

/**
 * 前台新闻控制器
 * @author llq
 *
 */
@RequestMapping("/news")
@Controller
public class HomeNewsController {
	
	@Autowired
	private NewsCategoryService newsCategoryService;
	
	@Autowired
	private NewsService newsService;
	

	
	
	/**
	 * 查看新闻详情
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/detail",method=RequestMethod.GET)
	public ModelAndView detail(ModelAndView model,Long id){
		model.addObject("newsCategoryList", newsCategoryService.findAll());
		News news = newsService.find(id);
		List<NewsCategory> list=newsCategoryService.findAll();
		for(int i=0;i<list.size();i++) {
			if (list.get(i).getId() == news.getCategoryId()){
				model.addObject("name", list.get(i).getName());
				break;
			}
		}
		model.addObject("newsFront", newsService.findFront(id));
		model.addObject("newsBack", newsService.findBack(id));
		model.addObject("news", news);
		model.addObject("title", news.getTitle());
		model.addObject("tags", news.getTags().split(","));
		model.setViewName("main/news/detail");
		//查看数加1
		newsService.updateViewNumber(id);
		return model;
	}
	/**
	 * 显示 项目公开信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/xmgk",method=RequestMethod.GET)
	public ModelAndView xmgk(ModelAndView model

	){
		model.addObject("newsCategoryList", newsCategoryService.findAll());
		model.setViewName("main/news/xmgk");
		return model;
	}

	/**
	 * 按照分类显示新闻列表
	 * @param model
	 * @param cid
	 * @return
	 */
	@RequestMapping(value="/category_list",method=RequestMethod.GET)
	public ModelAndView categoryList(ModelAndView model,
			@RequestParam(name="cid",required=true) Long cid,
			Page page
			){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		Map<String, Object> queryMap1 = new HashMap<String, Object>();
		int rows=12;
		queryMap1.put("categoryId", cid);
		queryMap.put("offset", 0);
		queryMap.put("pageSize", rows);
		queryMap.put("categoryId", cid);
		int total=newsService.getTotal(queryMap1);
		int pages=0;
		if(total==0){
			pages=0;
		}else {
			if(total%rows==0){
				pages=total/rows;
			}else {
				pages=total/rows+1;
			}
		}
		model.addObject("pages", pages);
		model.addObject("newsCategoryList", newsCategoryService.findAll());
		model.addObject("newsList", newsService.findList(queryMap));
		NewsCategory newsCategory = newsCategoryService.find(cid);
		model.addObject("newsCategory", newsCategory);
		model.addObject("title", newsCategory.getName());
		model.setViewName("main/news/category_list");
		return model;
	}

	
	/**
	 * 分页获取某个分类下的文章
	 * @param page
	 * @param cid
	 * @return
	 */
	@RequestMapping(value="/get_category_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getCategoryList(Page page,
			@RequestParam(name="cid",required=true) Long cid
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		Map<String, Object> queryMap1 = new HashMap<String, Object>();
		queryMap1.put("categoryId", cid);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		queryMap.put("categoryId", cid);
//		ret.put("type", "success");
		int total=newsService.getTotal(queryMap1);
		ret.put("newsTotal",total);
		int pages=total/page.getRows();
		ret.put("pageCount",pages);
		ret.put("newsList", newsService.findList(queryMap));
		return ret;
	}


	/**
	 *
	 * @param model
	 * @param keyword
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/search_list",method=RequestMethod.GET)//获取搜索列表
	public ModelAndView searchList(ModelAndView model,
			@RequestParam(name="keyword",required=false,defaultValue="") String keyword,
			Page page
			){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		int rows=12;
		queryMap.put("offset", 0);
		queryMap.put("pageSize", rows);
		int total=newsService.getNewsTotal();
		int pages=0;
		if(total==0){
			pages=0;
		}else {
			if(total%rows==0){
				pages=total/rows;
			}else {
				pages=total/rows+1;
			}
		}
		model.addObject("pages", pages);
		queryMap.put("title", keyword);
		model.addObject("newsCategoryList", newsCategoryService.findAll());
		model.addObject("newsList", newsService.findList(queryMap));
		model.addObject("title", keyword + "关键字下的新闻信息");
		model.addObject("keyword", keyword);
		model.setViewName("main/news/search_list");
		return model;
	}
	
	/**
	 * 分页加载搜索列表
	 * @param page
	 * @param keyword
	 * @return
	 */
	@RequestMapping(value="/get_search_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getSearchList(Page page,
			@RequestParam(name="keyword",required=false,defaultValue="") String keyword
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		int total=newsService.getNewsTotal();
		queryMap.put("newsTotal", total);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		queryMap.put("title", keyword);
		//ret.put("type", "success");
		ret.put("newsList", newsService.findList(queryMap));
		return ret;
	}
	


}
