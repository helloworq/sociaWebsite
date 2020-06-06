package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Array;
import java.util.ArrayList;

@Repository
@Mapper
public interface UserInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);

    @Select("select userName from user_info where userNickName =#{userNickName}")
    String getUserRealName(String userNickName);

    @Select("select userHeadUrl from user_info where userNickName =#{userNickName}")
    String getUserHeadUrl(String userNickName);

    @Select("select * from user_info where usernickname=#{username}")
    UserInfo selectByUsername(String username);

    @Select("select count(*) from user_info where usernickname=#{usernickname}")
    int isFriendExist(String usernickname);

    @Select("select * from user_info where usernickname=#{usernickname}")
    UserInfo getSearchInfo(String usernickname);
}