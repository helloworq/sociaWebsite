package com.example.testspringboot.demo;

import com.example.testspringboot.dao.VideoInfoMapper;
import com.example.testspringboot.dao.ZhihudownloadinfoMapper;
import com.example.testspringboot.entiy.VideoInfo;
import com.example.testspringboot.entiy.Zhihudownloadinfo;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@SpringBootTest
class DemoApplicationTests {
    @Autowired
    ZhihudownloadinfoMapper mapper ;
    @Autowired
    VideoInfoMapper mapper1;
    @Test
    void contextLoads() {
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


        List<VideoInfo> list=new ArrayList<>();
        for (int i = 0; i < 15; i++) {
            VideoInfo videoInfo=new VideoInfo();
            videoInfo.setVideoname("视频");
            videoInfo.setVideolength(new Date());
            videoInfo.setVideodescribe("aassddffgg");
            videoInfo.setVideoproducer("李子柒");
            list.add(videoInfo);
        }
        mapper1.insertList(list);


    }
}
