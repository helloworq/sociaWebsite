package com.example.testspringboot.dao;

import com.example.testspringboot.entiy.Logindata;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface LogindataMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Logindata record);

    int insertSelective(Logindata record);

    Logindata selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Logindata record);

    int updateByPrimaryKey(Logindata record);

    @Select("select password from logindata where username=#{Account}")
    String selectPasswordByAccount(String Account);
}