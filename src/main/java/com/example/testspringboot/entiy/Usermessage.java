package com.example.testspringboot.entiy;

import java.util.Date;

public class Usermessage {
    private Integer id;

    private Integer messagecontent;

    private Date time;

    private String whomessage;

    private Integer messagetowho;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMessagecontent() {
        return messagecontent;
    }

    public void setMessagecontent(Integer messagecontent) {
        this.messagecontent = messagecontent;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getWhomessage() {
        return whomessage;
    }

    public void setWhomessage(String whomessage) {
        this.whomessage = whomessage;
    }

    public Integer getMessagetowho() {
        return messagetowho;
    }

    public void setMessagetowho(Integer messagetowho) {
        this.messagetowho = messagetowho;
    }
}