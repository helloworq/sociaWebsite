package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.Comment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
@Repository
@Mapper
public interface CommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);

    //根据传入的receviedCommentID值找到评论
    @Select("select * from comment where userccommentid=#{receviedCommentID}")
    ArrayList<Comment> selectByReceviedCommentID(Integer receviedCommentID);

    @Select("select userHeadUrl from user_info where usernickname=#{username}")
    int selectUserHeadUrl(String username);
}