package com.module.controller.base;

import com.github.pagehelper.Page;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 所有控制器的父类
 * @author huhao
 */
public class BaseController {

    /**
     * 时间转换处理器
     *
     * @param binder
     */
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        //true:允许输入空值，false:不能为空值
        binder.registerCustomEditor(
                Date.class,
                new CustomDateEditor(
                        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"),
                        true
                )
        );
    }


    /**
     * 分页参数方法封装
     *
     * @param model
     * @param pathUrl  分页地址
     * @param pageInfo 分页查询信息
     */
    public static void setPageParams(Model model, String pathUrl, Page<Object> pageInfo) {
        //绑定当前页参数
        model.addAttribute("currentPage", pageInfo.getPageNum());
        //绑定总页数
        model.addAttribute("totalPage", pageInfo.getPages());
        //绑定总记录条数
        model.addAttribute("totalNums", pageInfo.getTotal());
        //绑定分页跳转地址
        model.addAttribute("pathURL", pathUrl);
    }


}
