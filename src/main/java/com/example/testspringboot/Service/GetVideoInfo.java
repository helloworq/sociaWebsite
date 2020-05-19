package com.example.testspringboot.Service;

import com.alibaba.fastjson.JSON;
import com.example.testspringboot.dao.VideoInfoMapper;
import com.example.testspringboot.entiy.VideoInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/controller")
public class GetVideoInfo {
    @Autowired
    VideoInfoMapper mapper;
    /**
     * Ajax通过访问此方法获取VideoInfo数据库里的数据以List对象的方式返回给main.jsp页面使用
     * 因为需要控制分页的需求，所以需要读取页面的索引值，索引值为1时获取数据库前15个数据
     * 索引值为2时获取数据库前16-30个数据，以此类推达到分页的效果
     * @param pageIndex
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/getVideoInfo",method = RequestMethod.POST)
    public Map<String,Object> map(
            @RequestParam(value = "pageIndex",required = false) int pageIndex){
        System.out.println("Ajax到达1,索引值："+pageIndex);
        //存储键值数据
        int beilvNumber=15;//1-15   16-30   31-45
        Map<String,Object> map=new HashMap<>();
        List<VideoInfo> list=new ArrayList<>();
        //System.out.println("Ajax到达1,索引值："+pageIndex);
        //从数据库中读取15项数据，存入list
        for (int i = pageIndex*beilvNumber-14; i <= pageIndex*beilvNumber; i++) {//246  445
            System.out.println("正在操作..."+i);
            //System.out.println(mapper.selectByPrimaryKey(i).getVideodescribe());
            list.add(mapper.selectByPrimaryKey(i));
        }
        //System.out.println(JSON.toJSON(list));
        //将获取好的数据存入map
        map.put("msg", JSON.toJSON(list));
        //System.out.println("Ajax出去");
        return map;
    }
}
