package com.example.testspringboot.Service;

public class unit2 {
    String picUrl="www.baidu.com";
    String nickName="隔夜饭馊了";
    String content="将进酒" +
            "唐代：李白" +
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
            "五花马、千金裘，呼儿将出换美酒，与尔同销万古愁。";
    int collect=10;
    int share=112;
    int comment=33;
    int like=666;
    public String getPicUrl() {
        return picUrl;
    }

    public void setPicUrl(String picUrl) {
        this.picUrl = picUrl;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCollect() {
        return collect;
    }

    public void setCollect(int collect) {
        this.collect = collect;
    }

    public int getShare() {
        return share;
    }

    public void setShare(int share) {
        this.share = share;
    }

    public int getComment() {
        return comment;
    }

    public void setComment(int comment) {
        this.comment = comment;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

}