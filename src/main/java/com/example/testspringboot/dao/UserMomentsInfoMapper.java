package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.UserMomentsInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.hibernate.validator.constraints.EAN;
import org.springframework.stereotype.Repository;

import javax.validation.constraints.Max;
import java.util.ArrayList;
import java.util.List;

@Repository
@Mapper
public interface UserMomentsInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(UserMomentsInfo record);

    int insertSelective(UserMomentsInfo record);

    UserMomentsInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserMomentsInfo record);

    int updateByPrimaryKey(UserMomentsInfo record);

    int insertList(List list);

    //mapper文件中的返回值是UserMomentsInfo
    ArrayList<UserMomentsInfo> selectFriendsInfoByfriendName(
            @Param(value = "userName") String userName,
            @Param(value = "page") Integer page
    );

    int selectByfriendNameofCount(String userName);

    @Select("select * from user_moments_info where userNickName =#{userName}")
    ArrayList<UserMomentsInfo> selectByUserName(String userName);

    @Select("select count(*) from user_moments_info")
    int selectCount();

    @Select("select comment from user_moments_info where id=#{momentID}")
    int selectCommentNumber(int momentID);

    @Select("select likes from user_moments_info where id=#{momentID}")
    int selectLikesNumber(int momentID);

    @Select("select collect from user_moments_info where id=#{momentID}")
    int selectCollectNumber(int momentID);
}