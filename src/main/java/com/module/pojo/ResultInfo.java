package com.module.pojo;

import java.util.Date;


/**
 * 问卷表 wenjuan
 *
 * @author administrator
 *
 */
public class ResultInfo {
    private static final long serialVersionUID = 1L;

    /**
     * ID
     */
    private Integer id;

    private String username;
    /**
     * 题目
     */
    private String name;
    /**
     * 答案
     */
    private String daan;
    /**
     * 分数
     */
    private String fenshu;
    /**
     * 选项
     */
    private String xuanxiang;
    /**
     * 结果
     */
    private String result;
    /**
     * 得分
     */
    private Integer score;
    /**
     * 创建时间
     */
    private Date createtime;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDaan() {
        return daan;
    }

    public void setDaan(String daan) {
        this.daan = daan;
    }

    public String getFenshu() {
        return fenshu;
    }

    public void setFenshu(String fenshu) {
        this.fenshu = fenshu;
    }

    public String getXuanxiang() {
        return xuanxiang;
    }

    public void setXuanxiang(String xuanxiang) {
        this.xuanxiang = xuanxiang;
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

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }
}
