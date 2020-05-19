package com.example.testspringboot.entiy;

import java.util.Date;

public class Likes {
    private Integer id;

    private Integer userlikesmomentid;

    private Date time;

    private String likesusername;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserlikesmomentid() {
        return userlikesmomentid;
    }

    public void setUserlikesmomentid(Integer userlikesmomentid) {
        this.userlikesmomentid = userlikesmomentid;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getLikesusername() {
        return likesusername;
    }

    public void setLikesusername(String likesusername) {
        this.likesusername = likesusername;
    }
}