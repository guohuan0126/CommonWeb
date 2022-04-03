package com.module.controller;

import com.github.pagehelper.Page;
import com.module.mapper.ArticleMapper;
import com.module.mapper.ClassifyMapper;
import com.module.mapper.LinkUrlMapper;
import com.module.mapper.UserInfoMapper;
import com.module.pojo.Article;
import com.module.pojo.Classify;
import com.module.pojo.LinkUrl;
import com.module.pojo.UserInfo;
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
 * 页面请求控制  帖子管理
 * @author huhao
 */
@Controller
public class ArticleController {
    @Resource
    ArticleMapper articleMapper;
    @Resource
    ClassifyMapper classifyMapper;
    @Resource
    UserInfoMapper userinfoMapper;
    @Resource
    LinkUrlMapper linkurlMapper;



    /**
     * 跳转到列表页面
     *
     * @return
     */
    @RequestMapping("manage/articleList")
    public String articleList() {
        return "manage/article/articleList";
    }

    /**
     * 跳转到添加页面
     *
     * @return
     */
    @RequestMapping("manage/addArticle")
    public String addArticle(Model model) {
        List<Classify> classifyList = classifyMapper.selectAll(null);
        model.addAttribute("classifyList", classifyList);
        return "manage/article/saveArticle";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/editArticle")
    public String editArticle(Integer id, Model model) {
        List<Classify> classifyList = classifyMapper.selectAll(null);
        model.addAttribute("classifyList", classifyList);
        Article article = articleMapper.selectArticleById(id);
        model.addAttribute("article", article);
        return "manage/article/saveArticle";
    }

    /**
     * 查看详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("manage/articleInfo")
    public String articleInfo(Integer id, Model model) {
        Article article = articleMapper.selectArticleById(id);
        model.addAttribute("article", article);
        return "manage/article/articleInfo";
    }


    /**
     * 分页查询
     *
     * @param page  默认第一页
     * @param limit 默认每页显示10条
     * @return
     */
    @RequestMapping("manage/queryArticleList")
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
        List<Article> list = articleMapper.selectAll(map);
        PageInfo<Article> pageInfo = new PageInfo<Article>(list);
        return ResultUtil.pageOk(pageInfo);
    }

    /**
     * 插入记录
     */
    @RequestMapping("manage/saveArticle")
    @ResponseBody
    public ResultUtil saveArticle(Article article, HttpSession session) {
        Date nowTime = new Date();
        article.setCreatetime(nowTime);
        try {
            articleMapper.insertArticle(article);
            return ResultUtil.ok("添加帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("添加帖子出错,稍后再试！");
        }
    }

    /**
     * 更新记录
     */
    @RequestMapping("manage/updateArticle")
    @ResponseBody
    public ResultUtil updateArticle(Article article, HttpSession session) {
        Date nowTime = new Date();
        article.setCreatetime(nowTime);
        try {
            articleMapper.updateArticle(article);
            return ResultUtil.ok("修改帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("修改帖子出错,稍后再试！");
        }
    }


    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/deleteArticle")
    @ResponseBody
    public ResultUtil deleteArticleById(Integer id) {
        try {
            articleMapper.deleteArticleById(id);
            return ResultUtil.ok("删除帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("删除帖子出错,稍后再试！");
        }
    }

    /**
     * 根据ID批量删除
     *
     * @param idsStr
     * @return
     */
    @RequestMapping("manage/deletesArticle")
    @ResponseBody
    public ResultUtil deletesArticle(String idsStr) {
        try {
            if (!StringUtils.isBlank(idsStr)) {
                String[] ids = idsStr.split(",");
                for (String id : ids) {
                    articleMapper.deleteArticleById(Integer.parseInt(id));
                }
            }
            return ResultUtil.ok("批量删除帖子成功");
        } catch (Exception e) {
            return ResultUtil.error("删除帖子出错,稍后再试！");
        }
    }

    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */
    @RequestMapping("manage/pc/deleteArticle")
    public String deleteArticleById(Integer id, Model model, HttpSession session) {
        try {
            UserInfo loginUserInfo = getLoginUserInfo(session);
            articleMapper.deleteArticleById(id);
            Map<String, String> map = new HashMap<>();

            if (Objects.nonNull(loginUserInfo)) {
                map.put("author", loginUserInfo.getName());
                model.addAttribute("author", loginUserInfo.getName());
            }
            model.addAttribute("g", 1);
            Page<Object> pageInfo = PageHelper.startPage(1, 10, true);
            pageInfo.setOrderBy(" id desc ");

            List<Article> beanDataList = articleMapper.selectAll(map);
            model.addAttribute("beanDataList", beanDataList);
            setPageParams(model, "pc/articleIndex", pageInfo); //绑定分页参数
            List<Classify> classifyList = classifyMapper.selectAll(null);
            model.addAttribute("sorttypeList", classifyList);
            setLinkurlContent(session); //查询友情链接
            return "pc/articleIndex";
        } catch (Exception e) {
            return "pc/index";
        }
    }
    /**
     * 获取前端登录用户ID
     *
     * @param session
     * @return
     */
    public int getLoginUserInfoId(HttpSession session) {
        int userId = (int) session.getAttribute("loginUserinfoID");
        return userId;
    }

    public UserInfo getLoginUserInfo(HttpSession session) {
        Object loginUserinfoId = session.getAttribute("loginUserinfoID");
        if (Objects.isNull(loginUserinfoId)){
            return null;
        }
        int userId = (int) loginUserinfoId;
        return userinfoMapper.selectUserinfoById(userId);
    }

    public void setLinkurlContent(HttpSession session) {
        List<LinkUrl> linkUrlList = linkurlMapper.selectAll(null);
        session.setAttribute("linkUrlList", linkUrlList);
    }

    /**
     * 分页参数方法封装
     *
     * @param model
     * @param pathUrl  分页地址
     * @param pageInfo 分页查询信息
     */
    public static void setPageParams(Model model, String pathUrl, Page<Object> pageInfo) {
        model.addAttribute("currentPage", pageInfo.getPageNum()); //绑定当前页参数
        model.addAttribute("totalPage", pageInfo.getPages()); //绑定总页数
        model.addAttribute("totalNums", pageInfo.getTotal()); //绑定总记录条数
        model.addAttribute("pathURL", pathUrl); //绑定分页跳转地址
    }
}
