package com.example.testspringboot.entiy;

import java.util.Date;

public class UserInfo {
    private Integer id;

    private String username;

    private Date userjointime;

    private Date userbirthday;

    private Integer userage;

    private String usersex;

    private String usernickname;

    private String userheadurl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getUserjointime() {
        return userjointime;
    }

    public void setUserjointime(Date userjointime) {
        this.userjointime = userjointime;
    }

    public Date getUserbirthday() {
        return userbirthday;
    }

    public void setUserbirthday(Date userbirthday) {
        this.userbirthday = userbirthday;
    }

    public Integer getUserage() {
        return userage;
    }

    public void setUserage(Integer userage) {
        this.userage = userage;
    }

    public String getUsersex() {
        return usersex;
    }

    public void setUsersex(String usersex) {
        this.usersex = usersex;
    }

    public String getUsernickname() {
        return usernickname;
    }

    public void setUsernickname(String usernickname) {
        this.usernickname = usernickname;
    }

    public String getUserheadurl() {
        return userheadurl;
    }

    public void setUserheadurl(String userheadurl) {
        this.userheadurl = userheadurl;
    }
}