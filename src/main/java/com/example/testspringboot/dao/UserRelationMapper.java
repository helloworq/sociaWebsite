package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.UserRelation;
import com.example.testspringboot.entiy.friendChartEntiy;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Mapper
public interface UserRelationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserRelation record);

    int insertSelective(UserRelation record);

    UserRelation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserRelation record);

    int updateByPrimaryKey(UserRelation record);

    ArrayList<friendChartEntiy> selectFriendChartEntiy(String userName);

    @Delete("delete from user_relation where username=#{username} and friendname=#{friendname}")
    int deleteBySelectFriendNameAndUserName(String username,String friendname);
}