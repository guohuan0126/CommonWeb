package com.module.controller;

import com.github.pagehelper.Page;
import com.module.constants.Constant;
import com.module.mapper.ClassifyMapper;
import com.module.pojo.Classify;
import com.module.util.ResultUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * 页面请求控制  分类管理
 * @author huhao
 */
@Controller
public class ClassifyController {
    @Resource
    ClassifyMapper classifyMapper;


    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/classifyList")
    public String sorttypeList() {
        return "manage/classify/sorttypeList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addSorttype")
    public String addSorttype(Model model) {
        return "manage/classify/saveSorttype";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editSorttype")
    public String editSorttype(Integer id, Model model) {
        Classify classify = classifyMapper.selectSorttypeById(id);
        model.addAttribute("classify", classify);
        return "manage/classify/saveSorttype";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/sorttypeInfo")
    public String sorttypeInfo(Integer id, Model model) {
        Classify classify = classifyMapper.selectSorttypeById(id);
        model.addAttribute("classify", classify);
        return "manage/classify/sorttypeInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/querySorttypeList")
    @ResponseBody
    public ResultUtil getCarouseList(Integer page, Integer limit, String keyword) {
        if (Objects.isNull(page)) {
            page = 1;
        }
        if (Objects.isNull(limit)) {
            limit = 10;
        }
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
        }
        Page<Object> pageHelper = PageHelper.startPage(page, limit, true);
        pageHelper.setOrderBy(" id desc ");
        List<Classify> list = classifyMapper.selectAll(map);
        PageInfo<Classify> pageInfo = new PageInfo<Classify>(list);
        return ResultUtil.pageOk(pageInfo);
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveSorttype")
    @ResponseBody
    public ResultUtil saveSorttype(Classify classify, HttpSession session) {
        Date nowTime = new Date();
        classify.setCreatetime(nowTime);
        try {
            classifyMapper.insertSorttype(classify);
            return ResultUtil.ok("添加分类成功");
        } catch (Exception e) {
            return ResultUtil.error("添加分类出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateSorttype")
    @ResponseBody
    public ResultUtil updateSorttype(Classify classify, HttpSession session) {
        Date nowTime = new Date();
        classify.setCreatetime(nowTime);
        try {
            classifyMapper.updateSorttype(classify);
            return ResultUtil.ok("修改分类成功");
        } catch (Exception e) {
            return ResultUtil.error("修改分类出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteSorttype")
    @ResponseBody
    public ResultUtil deleteSorttypeById(Integer id) {
        try {
            classifyMapper.deleteSorttypeById(id);
            return ResultUtil.ok("删除分类成功");
        } catch (Exception e) {
            return ResultUtil.error("删除分类出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesSorttype")
    @ResponseBody
    public ResultUtil deletesSorttype(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    classifyMapper.deleteSorttypeById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除分类成功");
        } catch (Exception e) {
            return ResultUtil.error("删除分类出错,稍后再试！");
        }
    }


}
