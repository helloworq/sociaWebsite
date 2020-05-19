package com.example.testspringboot.demo;

import com.example.testspringboot.dao.*;
import com.example.testspringboot.entiy.UserInfo;
import com.example.testspringboot.entiy.UserMomentsInfo;
import com.example.testspringboot.entiy.UserRelation;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.*;

@SpringBootTest
class DemoApplicationTests {
    @Autowired
    ZhihudownloadinfoMapper mapper ;
    @Autowired
    VideoInfoMapper mapper1;
    @Autowired
    UserMomentsInfoMapper mapper2;
    @Autowired
    UserRelationMapper mapper3;
    @Autowired
    UserInfoMapper mapper4;
    @Test
    void contextLoads() {
        //往用户信息表里插入用户信息数据
        //String Emperores=
        //        "秦始皇 汉武帝 唐太宗 康熙大帝 乾隆大帝 金太祖 隋文帝 成吉思汗" +
        //                " 周世宗 朱高炽";
        //    "宋太祖 皇太极 刘邦 孝文帝 朱元璋 光绪帝 朱瞻基 汉光武帝 " +
        //    "努尔哈赤 宋仁版宗 辽太宗 金太祖 周世宗 朱高炽";

/*
        for (int i = 0; i < 201; i++) {
            UserMomentsInfo userMomentsInfox=new UserMomentsInfo();
            userMomentsInfox.setId(i);
            userMomentsInfox.setShare(0);
            userMomentsInfox.setLikes(0);
            userMomentsInfox.setComment(0);
            userMomentsInfox.setCollect(0);
            mapper2.updateByPrimaryKeySelective(userMomentsInfox);
        }

 */
/*
        String Emperores=
                "秦始皇 汉武帝 唐太宗 康熙大帝 乾隆大帝 金太祖 隋文帝 成吉思汗 " +
                        "周世宗 宋太祖 皇太极 孝文帝 光绪帝 汉光武帝 " +
                        "宋仁版宗 辽太宗";
        String[] EmperoresArray=Emperores.split(" ");
        for (int i=0;i<EmperoresArray.length;i++){
            UserInfo userInfo=new UserInfo();
            userInfo.setId(i);
            userInfo.setUserage((int)(Math.random()*100));
            userInfo.setUserbirthday(new Date());
            userInfo.setUserheadurl("/img/5050.jpg");
            userInfo.setUserjointime(new Date());

            String generatedName=EmperoresArray[i];
            userInfo.setUsernickname(generatedName);
            switch (generatedName){
                case "秦始皇":userInfo.setUsername("赢政");break;
                case "汉武帝":userInfo.setUsername("刘彻");break;
                case "唐太宗":userInfo.setUsername("李世民");break;
                case "康熙大帝":userInfo.setUsername("爱新觉罗·玄烨");break;
                case "乾隆大帝":userInfo.setUsername("爱新觉罗·弘历");break;
                case "金太祖":userInfo.setUsername("努尔哈赤");break;
                case "隋文帝":userInfo.setUsername("杨坚");break;
                case "周世宗":userInfo.setUsername("柴荣");break;
                case "成吉思汗":userInfo.setUsername("孛儿只斤·铁木真");break;
                case "宋太祖":userInfo.setUsername("赵匡胤");break;
                case "皇太极":userInfo.setUsername("爱新觉罗·皇太极");break;
                case "孝文帝":userInfo.setUsername("拓跋宏");break;
                case "光绪帝":userInfo.setUsername("爱新觉罗·载湉");break;
                case "明太祖":userInfo.setUsername("朱元璋");break;
                case "汉光武帝":userInfo.setUsername("刘秀");break;
                case "辽太宗":userInfo.setUsername("耶律德光");break;
                case "宋仁版宗":userInfo.setUsername("赵祯");break;
            }
            userInfo.setUsersex("男");
            mapper4.updateByPrimaryKey(userInfo);
        }
*/



/*
        //往用户社交关系表里插入用户关系数据
        String Emperores=
                "秦始皇 汉武帝 唐太宗 康熙大帝 乾隆大帝 金太祖 隋文帝 成吉思汗 " +
                        "周世宗 宋太祖 皇太极 孝文帝 光绪帝 汉光武帝 " +
                        "宋仁版宗 辽太宗";
        String[] EmperoresArray=Emperores.split(" ");
        HashSet<Integer> hashSet=new HashSet();
        for (int i = 0; i < 100; i++) {
            hashSet.add((int)(Math.random()*100));
        }
        Iterator<Integer> iterator=hashSet.iterator();
        while (iterator.hasNext()){
            UserRelation userRelation=new UserRelation();
            int a=iterator.next();
            if(a>9){
                //如果是两位数
                int fir=(a/10)%10;int sec=a%10;
                if (fir==sec)
                    continue;
                else {
                    System.out.print("a原始数字为" + a + "第一位是" + (a / 10) % 10 + "第二位是" + a % 10);
                    userRelation.setUsername(EmperoresArray[(a / 10) % 10]);
                    userRelation.setFriendname(EmperoresArray[a % 10]);
                    userRelation.setFollowtime(new Date());
                    System.out.println("POJO已赋值");
                    mapper3.insert(userRelation);
                    //mapper3.updateByPrimaryKey(userRelation);
                    System.out.println("成功插入数据库");
                }
            }
            else {
                if(a!=0) {
                    System.out.println("b原始数字为" + a + "第一位是" + 0 + "第二位是" + a);
                    userRelation.setUsername(EmperoresArray[0]);
                    userRelation.setFriendname(EmperoresArray[a]);
                    userRelation.setFollowtime(new Date());
                    System.out.println("POJO已赋值");
                    mapper3.insert(userRelation);
                    //mapper3.updateByPrimaryKey(userRelation);
                    System.out.println("成功插入数据库");
                }
            }
        }

 */






/*
        //for (int i = 0; i < 1000; i++) {
        //    System.out.println((int)((Math.random())*1000));
        //}

        //生成userinfo表的测试示例
        List list=new ArrayList();
        for (int i = 0; i < 200; i++) {
            UserMomentsInfo userInfo=new UserMomentsInfo();
            userInfo.setId(i);
            userInfo.setCollect((int)((Math.random())*1000));
            userInfo.setComment((int)((Math.random())*1000));
            userInfo.setContent("将进酒" +
                    "唐代：李白 " +
                    "君不见黄河之水天上来，奔流到海不复回。" +
                    "君不见高堂明镜悲白发，朝如青丝暮成雪。" +
                    "人生得意须尽欢，莫使金樽空对月。" +
                    "天生我材必有用，千金散尽还复来。" +
                    "烹羊宰牛且为乐，会须一饮三百杯。" +
                    "岑夫子，丹丘生，将进酒，杯莫停。" +
                    "与君歌一曲，请君为我倾耳听。(倾耳听 一作：侧耳听)" +
                    "钟鼓馔玉不足贵，但愿长醉不愿醒。(不足贵 一作：何足贵；不愿醒 一作：不复醒)" +
                    "古来圣贤皆寂寞，惟有饮者留其名。(古来 一作：自古；惟 通：唯)" +
                    "陈王昔时宴平乐，斗酒十千恣欢谑。" +
                    "主人何为言少钱，径须沽取对君酌。" +
                    "五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。");
            userInfo.setLikes((int)((Math.random())*1000));
            String Emperores=
                    "秦始皇 汉武帝 唐太宗 康熙大帝 乾隆大帝 金太祖 隋文帝 成吉思汗 " +
                            "周世宗 宋太祖 皇太极 孝文帝 光绪帝 汉光武帝 " +
                            "宋仁版宗 辽太宗";
            //根据随机生成的nickname转为真名
            String[] nickNames=Emperores.split(" ");
            String generatedName=nickNames[(int)((Math.random())*nickNames.length)];
            userInfo.setUsernickname(generatedName);
            switch (generatedName){
                case "秦始皇":userInfo.setUserrealname("赢政");break;
                case "汉武帝":userInfo.setUserrealname("刘彻");break;
                case "唐太宗":userInfo.setUserrealname("李世民");break;
                case "康熙大帝":userInfo.setUserrealname("爱新觉罗·玄烨");break;
                case "乾隆大帝":userInfo.setUserrealname("爱新觉罗·弘历");break;
                case "金太祖":userInfo.setUserrealname("努尔哈赤");break;
                case "隋文帝":userInfo.setUserrealname("杨坚");break;
                case "周世宗":userInfo.setUserrealname("柴荣");break;
                case "成吉思汗":userInfo.setUserrealname("孛儿只斤·铁木真");break;
                case "宋太祖":userInfo.setUserrealname("赵匡胤");break;
                case "皇太极":userInfo.setUserrealname("爱新觉罗·皇太极");break;
                case "孝文帝":userInfo.setUserrealname("拓跋宏");break;
                case "光绪帝":userInfo.setUserrealname("爱新觉罗·载湉");break;
                case "明太祖":userInfo.setUserrealname("朱元璋");break;
                case "汉光武帝":userInfo.setUserrealname("刘秀");break;
                case "辽太宗":userInfo.setUserrealname("耶律德光");break;
                case "宋仁版宗":userInfo.setUserrealname("耶律德光");break;
            }
            userInfo.setPicurl("/img/5050.jpg");
            userInfo.setShare((int)((Math.random())*1000));
            userInfo.setSendtime(new Date());
            mapper2.updateByPrimaryKey(userInfo);
            //list.add(userInfo);
        }
        //mapper2.insertList(list);
 */





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


        for (int i = 46; i < 246; i++) {
            mapper1.deleteByPrimaryKey(i);
        }



         */


        /*List<VideoInfo> list = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            VideoInfo videoInfo = new VideoInfo();
            videoInfo.setVideoname("视频"+i);
            videoInfo.setVideolength(new Date());
            videoInfo.setVideodescribe("aassddffgg"+i);
            videoInfo.setVideoproducer("李子柒"+i);

            list.add(videoInfo);
        }

        mapper1.insertList(list);
        //System.out.println(JSON.toJSON(list));*/




    }

}
