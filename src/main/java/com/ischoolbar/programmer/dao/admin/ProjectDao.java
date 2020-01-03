package com.ischoolbar.programmer.dao.admin;
import java.util.List;
import java.util.Map;

import com.ischoolbar.programmer.entity.admin.Project;
import org.springframework.stereotype.Repository;

@Repository
public interface ProjectDao {
    public List<Project> findList(Map<String, Object> queryMap);//获取项目公开信息列表
}
