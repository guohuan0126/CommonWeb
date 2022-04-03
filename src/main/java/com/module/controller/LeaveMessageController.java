package com.module.controller;

import com.github.pagehelper.Page;
import com.module.mapper.LeaveMessageMapper;
import com.module.pojo.LeaveMessage;
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
 * 页面请求控制  留言管理
 * @author huhao
 */
@Controller
public class LeaveMessageController {
    @Resource
    LeaveMessageMapper leaveMessageMapper;


    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/leaveMessageList")
    public String liuyanList() {
        return "manage/message/liuyanList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addLiuyan")
    public String addLiuyan(Model model) {
        return "manage/message/saveLiuyan";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editLiuyan")
    public String editLiuyan(Integer id, Model model) {
        LeaveMessage leaveMessage = leaveMessageMapper.selectLiuyanById(id);
        model.addAttribute("leaveMessage", leaveMessage);
        return "manage/message/saveLiuyan";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/liuyanInfo")
    public String liuyanInfo(Integer id, Model model) {
        LeaveMessage leaveMessage = leaveMessageMapper.selectLiuyanById(id);
        model.addAttribute("leaveMessage", leaveMessage);
        return "manage/message/liuyanInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryLiuyanList")
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
        Page pageHelper = PageHelper.startPage(page, limit, true);
        pageHelper.setOrderBy(" id desc ");
        List<LeaveMessage> list = leaveMessageMapper.selectAll(map);
        PageInfo<LeaveMessage> pageInfo = new PageInfo<LeaveMessage>(list);
        return ResultUtil.pageOk(pageInfo);
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveLiuyan")
    @ResponseBody
    public ResultUtil saveLiuyan(LeaveMessage leaveMessage, HttpSession session) {
        Date nowTime = new Date();
        leaveMessage.setCreatetime(nowTime);
        try {
            leaveMessageMapper.insertLiuyan(leaveMessage);
            return ResultUtil.ok("添加留言成功");
        } catch (Exception e) {
            return ResultUtil.error("添加留言出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateLiuyan")
    @ResponseBody
    public ResultUtil updateLiuyan(LeaveMessage leaveMessage, HttpSession session) {
        Date nowTime = new Date();
        leaveMessage.setCreatetime(nowTime);
        try {
            leaveMessageMapper.updateLiuyan(leaveMessage);
            return ResultUtil.ok("修改留言成功");
        } catch (Exception e) {
            return ResultUtil.error("修改留言出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteLiuyan")
    @ResponseBody
    public ResultUtil deleteLiuyanById(Integer id) {
        try {
            leaveMessageMapper.deleteLiuyanById(id);
            return ResultUtil.ok("删除留言成功");
        } catch (Exception e) {
            return ResultUtil.error("删除留言出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesLiuyan")
    @ResponseBody
    public ResultUtil deletesLiuyan(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    leaveMessageMapper.deleteLiuyanById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除留言成功");
        } catch (Exception e) {
            return ResultUtil.error("删除留言出错,稍后再试！");
        }
    }


}
