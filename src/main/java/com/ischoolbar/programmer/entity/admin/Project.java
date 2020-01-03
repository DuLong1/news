package com.ischoolbar.programmer.entity.admin;
import java.util.Date;

public class Project {
    private Long id;
    private String test1;//新闻标题
    private  Date time;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTest1() {
        return test1;
    }

    public void setTest1(String test1) {
        this.test1 = test1;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
