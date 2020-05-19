package com.example.testspringboot.entiy;

import java.util.Date;

public class Comment {
    private Integer id;

    private Integer userccommentid;

    private String comment;

    private Date time;

    private String commentusername;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserccommentid() {
        return userccommentid;
    }

    public void setUserccommentid(Integer userccommentid) {
        this.userccommentid = userccommentid;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getCommentusername() {
        return commentusername;
    }

    public void setCommentusername(String commentusername) {
        this.commentusername = commentusername;
    }
}