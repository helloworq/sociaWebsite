package com.example.testspringboot.entiy;

public class friendChartEntiy {
    //此类用于给前端的我的好友里面的好友栏提供实体类以便转为json返回给前端
    public int id;
    public String userHeadUrl;
    public String friendname;
    public String followTime;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserHeadUrl(String userHeadUrl) {
        this.userHeadUrl = userHeadUrl;
    }

    public String getFriendname() {
        return friendname;
    }

    public void setFriendname(String friendname) {
        this.friendname = friendname;
    }

    public String getFollowTime() {
        return followTime;
    }

    public void setFollowTime(String followTime) {
        this.followTime = followTime;
    }
}
