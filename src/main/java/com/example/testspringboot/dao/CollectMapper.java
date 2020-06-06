package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.Collect;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Mapper
public interface CollectMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Collect record);

    int insertSelective(Collect record);

    Collect selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Collect record);

    int updateByPrimaryKey(Collect record);

    ArrayList<Collect> selectMyCollectByUserName(String userName);

    @Select("select collectMomentID from collect where whoCollect=#{userName}")
    ArrayList<Integer> userCollectedMoment(String userName);
}