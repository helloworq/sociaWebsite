package com.example.testspringboot.entiy;

import java.util.Date;

public class Collect {
    private Integer id;

    private Integer collectmomentid;

    private Date collecttime;

    private String whocollect;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCollectmomentid() {
        return collectmomentid;
    }

    public void setCollectmomentid(Integer collectmomentid) {
        this.collectmomentid = collectmomentid;
    }

    public Date getCollecttime() {
        return collecttime;
    }

    public void setCollecttime(Date collecttime) {
        this.collecttime = collecttime;
    }

    public String getWhocollect() {
        return whocollect;
    }

    public void setWhocollect(String whocollect) {
        this.whocollect = whocollect;
    }
}