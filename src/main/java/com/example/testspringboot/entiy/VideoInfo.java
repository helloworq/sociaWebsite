package com.example.testspringboot.entiy;

import java.util.Date;

public class VideoInfo {
    private Integer id;

    private String videoname;

    private Date videolength;

    private String videoproducer;

    private String videodescribe;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVideoname() {
        return videoname;
    }

    public void setVideoname(String videoname) {
        this.videoname = videoname;
    }

    public Date getVideolength() {
        return videolength;
    }

    public void setVideolength(Date videolength) {
        this.videolength = videolength;
    }

    public String getVideoproducer() {
        return videoproducer;
    }

    public void setVideoproducer(String videoproducer) {
        this.videoproducer = videoproducer;
    }

    public String getVideodescribe() {
        return videodescribe;
    }

    public void setVideodescribe(String videodescribe) {
        this.videodescribe = videodescribe;
    }
}