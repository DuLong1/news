package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.News;

/**
 * ����dao
 * @author llq
 *
 */
@Repository
public interface NewsDao {
	public int add(News news); //添加新闻
	public int edit(News news); //修改新闻
	public int delete(String ids);//删除新闻
	public List<News> findList(Map<String, Object> queryMap);//获取新闻列表
	public int getNewsTotal();//获取新闻总数
	public int getTotal(Map<String, Object> queryMap);//获取符合条件新闻总数
	public News find(Long id);                               //获取单条新闻纪录
	public News findFront(Long id);                           //获取当前新闻的上一条新闻纪录
	public News findBack(Long id);                           //获取当前新闻的下一条新闻纪录
	public int updateViewNumber(Long id);                      //修改新闻浏览量
	public List<News> findLastViewNumberList(int pageSize);      //查找浏览量最高的前n条新闻
	public List<News> findLastCoverList(Map<String, Object> param);      //查找封面的前n条新闻
}
