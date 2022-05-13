package com.module.controller.pc;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.module.controller.base.BaseController;
import com.module.mapper.*;
import com.module.pojo.*;
import com.module.util.MD5Util;
import com.module.util.ResultUtil;
import com.module.util.TreeList;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

/**
 * 前端控制器
 * @author huhao
 */
@Controller
public class FrontController extends BaseController {

    @Resource
    InformMapper informMapper;
    @Resource
    UserInfoMapper userinfoMapper;
    @Resource
    QuestionnaireMapper questionnaireMapper;
    @Resource
    ResultMapper resultMapper;
    @Resource
    ClassifyMapper classifyMapper;
    @Resource
    ArticleMapper articleMapper;
    @Resource
    LinkUrlMapper linkurlMapper;
    @Resource
    LeaveMessageMapper leaveMessageMapper;

    /**
     * 留言显示页面
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/leaveMessage")
    public String leaveMessage(Model model) {
        Page<LeaveMessage> pageInfo = PageHelper.startPage(1, 100, true);
        pageInfo.setOrderBy(" id desc ");
        List<LeaveMessage> leaveMessageList = leaveMessageMapper.selectAll(null);
        TreeList tree = new TreeList(leaveMessageList);
        List<LeaveMessage> listTree = tree.buildTree();
        model.addAttribute("leaveMessageList", listTree);
        return "pc/leaveMessage";
    }

    /**
     * 留言提交页面
     *
     * @param leaveMessage
     * @return
     */
    @RequestMapping("pc/liuyanSubmit")
    public String leaveMessageSubmit(LeaveMessage leaveMessage) {
        leaveMessage.setCreatetime(new Date());
        leaveMessageMapper.insertLiuyan(leaveMessage);
        if (null == leaveMessage.getIntro()) {
            return "redirect:leaveMessage";
        } else {
            return "redirect:articleDetail?id=" + leaveMessage.getIntro();
        }
    }

    /**
     * 跳转到问卷管理页面
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/questionnaire")
    public String questionnaire(Model model,  HttpSession session) {
        UserInfo loginUserInfo = getLoginUserInfo(session);
        if (Objects.nonNull(loginUserInfo)){
            Integer integer = resultMapper.selectWenjuanjieguoByUserId(loginUserInfo.getId());
            if (null==integer||integer==0){
                List<Questionnaire> questionnaireList = questionnaireMapper.selectAll(null);
                for (Questionnaire questionnaire : questionnaireList) {
                    questionnaire.setDaan("");
                }
                model.addAttribute("questionnaireList", questionnaireList);
            } else {
                model.addAttribute("score", integer);
            }
        } else {
            List<Questionnaire> questionnaireList = questionnaireMapper.selectAll(null);
            model.addAttribute("questionnaireList", questionnaireList);
        }
        return "pc/wenjuan";
    }


    /**
     * 关于我们
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/about")
    public String about(Model model) {
        return "pc/about";
    }


    @RequestMapping("pc/")
    public String index(Model model) {
        return "pc/index";
    }
    @RequestMapping("/")
    public String index1(Model model) {
        return "pc/index";
    }

    /**
     * 帖子列表
     * @param model
     * @param p
     * @param limit
     * @param keyword
     * @param name
     * @param orderStr
     * @param type
     * @param session
     * @return
     */
    @RequestMapping("pc/articleList")
    public String indexType(Model model, Integer p, Integer limit, String keyword, String name, String orderStr, String type, HttpSession session) {
        limit = 6;
        if (null == p) {
            p = 1;
        }
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            map.put("type", null);
            model.addAttribute("keyword", keyword);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        pageInfo.setOrderBy(" id desc ");
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/articleList", pageInfo);
        return "pc/articleList";
    }

    /**
     * PC前端首页
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/index")
    public String index(Model model, Integer p, Integer limit, String keyword, String title, String author, String orderStr, String type, HttpSession session) {

        limit = 6;
        if (Objects.isNull(p)) {
            p = 1;
        }
        Map<String, Object> map = new HashMap<>();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            model.addAttribute("keyword", keyword);
        }
        if (StringUtils.isNotEmpty(title)) {
            map.put("title", title);
            model.addAttribute("title", title);
        }
        if (StringUtils.isNotEmpty(author)) {
            map.put("author", author);
            model.addAttribute("author", author);
        }
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        if (StringUtils.isNotEmpty(orderStr)) {
            pageInfo.setOrderBy(orderStr);
        } else {
            pageInfo.setOrderBy(" id desc ");
        }
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/index", pageInfo); //绑定分页参数
        List<Classify> classifyList = classifyMapper.selectAll(null);
        model.addAttribute("sorttypeList", classifyList);
        setLinkurlContent(session); //查询友情链接
        return "pc/index";
    }

    /**
     * 文章查询
     * @param model
     * @param p
     * @param g
     * @param limit
     * @param keyword
     * @param title
     * @param author
     * @param orderStr
     * @param type
     * @param session
     * @return
     */
    @RequestMapping("pc/articleIndex")
    public String articleIndex(Model model, Integer p, Integer g,Integer limit, String keyword, String title,
                               String author,
                               String orderStr, String type, HttpSession session) {
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 9;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
            model.addAttribute("keyword", keyword);
        }
        if (StringUtils.isNotEmpty(title)) {
            map.put("title", title);
            model.addAttribute("title", title);
        }
        if (StringUtils.isNotEmpty(author)) {
            map.put("author", author);
            model.addAttribute("author", author);
        }
        if (StringUtils.isNotEmpty(type)) {
            map.put("type", type);
            model.addAttribute("type", type);
        }
        if (Objects.nonNull(g)) {
            model.addAttribute("g", g);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        if (StringUtils.isNotEmpty(orderStr)) {
            pageInfo.setOrderBy(orderStr);
        } else {
            pageInfo.setOrderBy(" id desc ");
        }
        List<Article> beanDataList = articleMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/articleIndex", pageInfo); //绑定分页参数
        List<Classify> classifyList = classifyMapper.selectAll(null);
        model.addAttribute("sorttypeList", classifyList);
        setLinkurlContent(session); //查询友情链接
        return "pc/articleIndex";
    }

    /**
     * 将友情链接放入session中
     *
     * @param session
     */
    public void setLinkurlContent(HttpSession session) {
        List<LinkUrl> linkUrlList = linkurlMapper.selectAll(null);
        session.setAttribute("linkUrlList", linkUrlList);
    }

    /**
     * 帖子详情
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("pc/articleDetail")
    public String articleDetail(Integer id, Model model) {
        Article beanData = articleMapper.selectArticleById(id);
        model.addAttribute("beanData", beanData);
        List<Questionnaire> questionnaireList = questionnaireMapper.selectAll(null);
        model.addAttribute("wenjuanList", questionnaireList);

        Page<Object> pageInfo = PageHelper.startPage(1, 1000, true);
        pageInfo.setOrderBy(" id desc ");
        Map map = new HashMap();
        map.put("artid", id);
        List<LeaveMessage> leaveMessageList = leaveMessageMapper.selectAll(map);
        System.out.println("liuyanList.size() = " + leaveMessageList.size());
        TreeList tree = new TreeList(leaveMessageList);
        List<LeaveMessage> listTree = tree.buildTree();
        System.out.println("liuyanList.size() = " + listTree.size());
        model.addAttribute("leaveMessageList", listTree);
        return "pc/articleDetail";
    }

    /**
     * 提交问券调查
     * @param id
     * @param username
     * @param model
     * @param request
     * @return
     */
    @RequestMapping("pc/submitWenjuan")
    public String submitWenjuan(Integer id, String username, Model model, HttpServletRequest request) {
        int loginUserInfoId = getLoginUserInfoId(request.getSession());
        Map<String, String[]> parameterMap = request.getParameterMap();
        List<Questionnaire> list = questionnaireMapper.selectAll(null);
        for (Questionnaire questionnaire : list) {
            Result j = new Result();
            String[] strings = parameterMap.get("xx" + questionnaire.getId());
            if (strings!=null&&strings.length>0){
                String a = strings[0];
                j.setUserId(loginUserInfoId);
                j.setUsername(username);
                j.setWenjuanId(questionnaire.getId());
                j.setResult(a);
                j.setScore(0);
                if (StringUtils.containsIgnoreCase(a, questionnaire.getDaan())){
                    j.setScore(Integer.parseInt(questionnaire.getFenshu()));
                }
                j.setCreateTime(new Date());
            }
            resultMapper.insertWenjuanjieguo(j);
        }
        List<Questionnaire> questionnaireList = questionnaireMapper.selectAll(null);
        return "pc/submitSuccess";
    }

    /**
     *校园公告列表
     * @param model
     * @param p
     * @param limit
     * @param keyword
     * @return
     */
    @RequestMapping("pc/informIndex")
    public String informIndex(Model model, Integer p, Integer limit, String keyword) {
        limit = 10;
        if (null == p) { //默认第一页
            p = 1;
        }
        if (null == limit) { //默认每页10条
            limit = 10;
        }
        Map map = new HashMap();
        if (StringUtils.isNotEmpty(keyword)) {
            map.put("keyword", keyword);
        }
        Page<Object> pageInfo = PageHelper.startPage(p, limit, true);
        List<Inform> beanDataList = informMapper.selectAll(map);
        model.addAttribute("beanDataList", beanDataList);
        setPageParams(model, "pc/informIndex", pageInfo); //绑定分页参数
        return "pc/informIndex";
    }


    /**
     * 获取验证码
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/code")
    public String code(Model model) {
        return "pc/code";
    }

    /**
     * 跳转登陆页
     *
     * @param model
     * @return
     */
    @RequestMapping("pc/login")
    public String login(Model model) {
        return "pc/login";
    }

    /**
     * 退出登录
     *
     * @param request
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("pc/loginOut")
    public String loginOut(HttpServletRequest request, Integer id, Model model) {
        HttpSession session = request.getSession();
        session.removeAttribute("loginUserinfo");
        return "pc/login";
    }

    /**
     * 登录提交
     *
     * @param username
     * @param password
     * @param vercode
     * @param request
     * @return
     */
    @ResponseBody
    @RequestMapping("pc/loginSubmit")
    public ResultUtil loginSubmit(String username, String password, String vercode, HttpServletRequest request) {
        HttpSession session = request.getSession();
        if (StringUtils.isBlank(vercode)) {
            return ResultUtil.error("验证码不能为空");
        }
        String randCode = session.getAttribute("randCode").toString();
        if (!randCode.equals(vercode)) {
            return ResultUtil.error("验证码不正确");
        }
        if (StringUtils.isBlank(username)) {
            return ResultUtil.error("用户名不能为空");
        }
        if (StringUtils.isBlank(password)) {
            return ResultUtil.error("登录密码不能为空");
        }
        Map map = new HashMap();
        map.put("name", username);
        List<UserInfo> beanList = userinfoMapper.selectAll(map);
        if (beanList.size() > 0) {
            UserInfo userinfo = beanList.get(0);
            String md5 = MD5Util.getMd5(MD5Util.getMd5(password));
            if (userinfo.getPassword().equals(md5)) {
                session.setAttribute("loginUserinfo", userinfo);
                session.setAttribute("loginUserinfoID", userinfo.getId());
                return ResultUtil.ok("登录成功");
            } else {
                return ResultUtil.error("用户名或者密码错误");
            }
        } else {
            return ResultUtil.error("用户名或者密码错误");
        }

    }

    @RequestMapping("pc/register")
    public String reg() {
        return "pc/register";
    }

    /**
     * 用户注册
     * @param request
     * @param userinfo
     * @param vercode
     * @return
     */
    @ResponseBody
    @RequestMapping("pc/registerSubmit")
    public ResultUtil regSubmit(HttpServletRequest request, UserInfo userinfo, String vercode) {
        HttpSession session = request.getSession();
        if (StringUtils.isBlank(vercode)) {
            return ResultUtil.error("验证码不能为空");
        }
        String randCode = session.getAttribute("randCode").toString();
        if (!randCode.equals(vercode)) {
            return ResultUtil.error("验证码不正确");
        }
        if (StringUtils.isBlank(userinfo.getName())) {
            return ResultUtil.error("姓名不能为空");
        }
        if (StringUtils.isBlank(userinfo.getPassword())) {
            return ResultUtil.error("登录密码不能为空");
        }
        userinfo.setCreatetime(new Date());
        String password = userinfo.getPassword();
        String md5 = MD5Util.getMd5(MD5Util.getMd5(password));
        userinfo.setPassword(md5);
        userinfoMapper.insertUserinfo(userinfo);
        return ResultUtil.ok("注册成功");
    }

    /**
     * 用户个人中心
     *
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("pc/userinfoCenter")
    public String userinfoCenter(Model model, HttpSession session) {
        int userInfoId = getLoginUserInfoId(session);
        UserInfo userinfo = userinfoMapper.selectUserinfoById(userInfoId);
        model.addAttribute("userinfo", userinfo);
        return "pc/userinfoCenter";
    }

    /**
     * 更新个人信息
     */
    @RequestMapping("pc/updateUserinfo")
    @ResponseBody
    public ResultUtil updateUserinfo(UserInfo userinfo, HttpSession session) {
        Date nowTime = new Date();
        userinfo.setCreatetime(nowTime);
        try {
            userinfoMapper.updateUserinfo(userinfo);
            userinfo = getLoginUserInfo(session);
            session.setAttribute("loginUserinfo", userinfo);
            return ResultUtil.ok("修改用户信息成功");
        } catch (Exception e) {
            return ResultUtil.error("修改用户信息出错,稍后再试！");
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
        Object loginUserinfo = session.getAttribute("loginUserinfoID");
        if (Objects.isNull(loginUserinfo)){
            return null;
        }
        int userId = (int) loginUserinfo;
        return userinfoMapper.selectUserinfoById(userId);
    }
}
