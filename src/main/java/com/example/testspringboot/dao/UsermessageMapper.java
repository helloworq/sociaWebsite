package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.Usermessage;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
@Mapper
public interface UsermessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Usermessage record);

    int insertSelective(Usermessage record);

    Usermessage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Usermessage record);

    int updateByPrimaryKey(Usermessage record);

    @Select("select * from usermessage where messagetowho=#{username}")
    ArrayList<Usermessage> selectAll(String username);
}