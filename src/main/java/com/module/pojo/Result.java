package com.module.pojo;

import java.util.Date;


/**
 * 问卷结果表 wenjuanjieguo
 *
 * @author administrator
 *
 */
public class Result {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;

    /**
     * 用户名
     */
    private Integer userId;
    /**
     * 用户名
     */
    private String username;
    /**
     * 答案1
     */
    private Integer wenjuanId;

    private String result;
    /**
     * 分数
     */
    private Integer score;
    /**
     * 创建时间
     */
    private Date createTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getWenjuanId() {
        return wenjuanId;
    }

    public void setWenjuanId(Integer wenjuanId) {
        this.wenjuanId = wenjuanId;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
