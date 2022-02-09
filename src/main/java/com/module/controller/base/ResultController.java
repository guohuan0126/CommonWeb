package com.module.controller.base;

import com.module.mapper.UserInfoMapper;
import com.module.mapper.QuestionnaireMapper;
import com.module.mapper.ResultMapper;
import com.module.pojo.Result;
import com.module.pojo.ResultInfo;
import com.module.pojo.UserInfo;
import com.module.pojo.ResultVo;
import com.module.util.ResultUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * 页面请求控制  问卷结果管理
 */
@Controller
public class ResultController {
    @Autowired
    ResultMapper resultMapper;
    @Autowired
    QuestionnaireMapper questionnaireMapper;
    @Autowired
    UserInfoMapper userinfoMapper;


    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/wenjuanjieguoList")
    public String wenjuanjieguoList() {
        return "manage/result/wenjuanjieguoList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addWenjuanjieguo")
    public String addWenjuanjieguo(Model model) {
        return "manage/result/saveWenjuanjieguo";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editWenjuanjieguo")
    public String editWenjuanjieguo(Integer id, Model model) {
        Result result = resultMapper.selectWenjuanjieguoById(id);
        model.addAttribute("result", result);
        return "manage/result/saveWenjuanjieguo";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/wenjuanjieguoInfo")
    public String wenjuanjieguoInfo(Integer id, Model model) {
        List<ResultInfo> resultInfoList = resultMapper.selectWenjuanjieguoInfoByUserId(id);
        UserInfo userinfo = userinfoMapper.selectUserinfoById(id);
        model.addAttribute("resultInfoList", resultInfoList);
        model.addAttribute("userinfo", userinfo);
        return "manage/result/wenjuanjieguoInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryWenjuanjieguoList")
    @ResponseBody
    public ResultUtil getCarouseList(Integer page, Integer limit, String keyword) {
        if (null == page) { //默认第一页
            page = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 10;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
        }
        PageHelper.startPage(page, limit, true);
        List<ResultVo> list = resultMapper.selectAllWenJuan(map);
        ResultUtil resultUtil = new ResultUtil();
        resultUtil.setCode(0);
        if (list!=null||list.size()>0){
            PageInfo<ResultVo> pageInfo = new PageInfo<>(list);
            resultUtil.setCount(pageInfo.getTotal());
            resultUtil.setData(pageInfo.getList());
        } else {
            resultUtil.setMsg("未查询到问卷结果！");
        }
        return resultUtil;
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveWenjuanjieguo")
    @ResponseBody
    public ResultUtil saveWenjuanjieguo(Result result, HttpSession session) {
        Date nowTime = new Date();
        result.setCreateTime(nowTime);
        try {
            resultMapper.insertWenjuanjieguo(result);
            return ResultUtil.ok("添加问卷结果成功");
        } catch (Exception e) {
            return ResultUtil.error("添加问卷结果出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateWenjuanjieguo")
    @ResponseBody
    public ResultUtil updateWenjuanjieguo(Result result, HttpSession session) {
        Date nowTime = new Date();
        result.setCreateTime(nowTime);
        try {
            resultMapper.updateWenjuanjieguo(result);
            return ResultUtil.ok("修改问卷结果成功");
        } catch (Exception e) {
            return ResultUtil.error("修改问卷结果出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteWenjuanjieguo")
    @ResponseBody
    public ResultUtil deleteWenjuanjieguoById(Integer id) {
        try {
            resultMapper.deleteWenjuanjieguoByUserId(id);
            return ResultUtil.ok("删除问卷结果成功");
        } catch (Exception e) {
            return ResultUtil.error("删除问卷结果出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesWenjuanjieguo")
    @ResponseBody
    public ResultUtil deletesWenjuanjieguo(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    resultMapper.deleteWenjuanjieguoById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除问卷结果成功");
        } catch (Exception e) {
            return ResultUtil.error("删除问卷结果出错,稍后再试！");
        }
    }


}
