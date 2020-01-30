package com.example.testspringboot.demo;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.testspringboot.dao.VideoInfoMapper;
import com.example.testspringboot.dao.ZhihudownloadinfoMapper;
import com.example.testspringboot.entiy.VideoInfo;
import com.example.testspringboot.entiy.Zhihudownloadinfo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;

@SpringBootTest
class DemoApplicationTests {
    @Autowired
    ZhihudownloadinfoMapper mapper ;
    @Autowired
    VideoInfoMapper mapper1;
    @Test
    void contextLoads() {
        /*
        System.out.println("Ajax到达1,索引值：");
        Map<String, List> map = new HashMap<>();
        List<VideoInfo> list = new ArrayList<>();
        for (int i = 1; i <= 15; i++) {
            list.add(mapper1.selectByPrimaryKey(i));
        }
        map.put("msg", list);
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) {
            VideoInfo videoInfo = (VideoInfo) iterator.next();
            System.out.print(videoInfo.getId() + " ");
            System.out.print(videoInfo.getVideoname() + " ");
            System.out.print(videoInfo.getVideolength() + " ");
            System.out.print(videoInfo.getVideoproducer() + " ");
            System.out.print(videoInfo.getVideodescribe());
            System.out.println();
        }

         */

        /*
        System.out.println("done");
        List<Zhihudownloadinfo> list=new ArrayList<>();
        System.out.println("done");
        for (int i = 0; i <10 ; i++) {
            System.out.println("done");
            Zhihudownloadinfo zhihudownloadinfo=new Zhihudownloadinfo();
            zhihudownloadinfo.setName(Integer.toString(i));
            zhihudownloadinfo.setType("String");
            zhihudownloadinfo.setDate(new Date());
            list.add(zhihudownloadinfo);
        }
        mapper.selectByPrimaryKey(1);
        */
        for (int i = 0; i < 30; i++) {
            mapper1.deleteByPrimaryKey(i);
        }
        List<VideoInfo> list = new ArrayList<>();
        for (int i = 0; i < 15; i++) {
            VideoInfo videoInfo = new VideoInfo();
            videoInfo.setVideoname("视频"+i);
            videoInfo.setVideolength(new Date());
            videoInfo.setVideodescribe("aassddffgg"+i);
            videoInfo.setVideoproducer("李子柒"+i);
            list.add(videoInfo);
        }

        System.out.println(JSON.toJSON(list));
        //mapper1.insertList(list);

    }

}
