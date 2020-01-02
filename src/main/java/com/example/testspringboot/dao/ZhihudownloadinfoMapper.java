package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.Zhihudownloadinfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface ZhihudownloadinfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Zhihudownloadinfo record);

    int insertSelective(Zhihudownloadinfo record);

    Zhihudownloadinfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Zhihudownloadinfo record);

    int updateByPrimaryKey(Zhihudownloadinfo record);
}