package com.ischoolbar.programmer.service.admin.impl;
/**
 * 新闻service实现类
 */
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.NewsDao;
import com.ischoolbar.programmer.entity.admin.News;
import com.ischoolbar.programmer.service.admin.NewsService;
@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;

	@Override
	public int add(News news) {
		// TODO Auto-generated method stub
		return newsDao.add(news);
	}

	@Override
	public int edit(News news) {
		// TODO Auto-generated method stub
		return newsDao.edit(news);
	}

	@Override
	public int delete(String ids) {
		// TODO Auto-generated method stub
		return newsDao.delete(ids);
	}

	@Override
	public List<News> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.getTotal(queryMap);
	}
	@Override
	public int getNewsTotal() {
		// TODO Auto-generated method stub
		return newsDao.getNewsTotal();
	}
	@Override
	public News find(Long id) {
		// TODO Auto-generated method stub
		return newsDao.find(id);
	}
	@Override
	public News findFront(Long id) {
		// TODO Auto-generated method stub
		return newsDao.findFront(id);
	}
	@Override
	public News findBack(Long id) {
		// TODO Auto-generated method stub
		return newsDao.findBack(id);
	}

	@Override
	public int updateViewNumber(Long id) {
		// TODO Auto-generated method stub
		return newsDao.updateViewNumber(id);
	}

	@Override
	public List<News> findLastViewNumberList(int pageSize) {
		// TODO Auto-generated method stub
		return newsDao.findLastViewNumberList(pageSize);
	}
	@Override
	public List<News> findLastCoverList(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return newsDao.findLastCoverList(param);
	}
	

}
