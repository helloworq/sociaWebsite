package com.example.testspringboot.entiy;

import org.apache.ibatis.annotations.Mapper;

import java.util.Date;

@Mapper
public class Zhihudownloadinfo {
    private Integer id;

    private String type;

    private Date date;

    private String name;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}