package com.module.controller.base;

import com.beust.jcommander.internal.Lists;
import com.module.constants.RespConstant;
import com.module.util.ResultUtil;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 文件上传请求处理类
 * @author huhao
 */
@Controller
public class FileUploadController {

    private static final List<String> FILE_TYPE = Lists.newArrayList(".jpg", ".jpeg", ".png", ".gif");
    /**
     * 文件上传
     * @param file
     * @param request
     * @return
     */
    @RequestMapping(value = "/uploadFile", produces = MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    @ResponseBody
    public ResultUtil uploadFile(MultipartFile file, HttpServletRequest request) {
        if (Objects.isNull(file)) {
            return ResultUtil.error(RespConstant.FILE_NO_EXIST);
        }
        String fileSub = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")).toLowerCase();
        if (FILE_TYPE.contains(fileSub)) {
            Random d = new Random();
            String img = System.currentTimeMillis() + "_" + d.nextInt(10) + "" + fileSub;
            //获取当前项目上传文件路径  中的upload文件中
            //将当前日期格式化为文件夹路径 例如"20190203"
            //获取项目路径 项目名（上下文）
            String basePath = request.getSession().getServletContext().getRealPath("/uploads");
            String path = basePath;
            try {
                File f = new File(path);
                if (!f.exists()) {
                    f.mkdirs();
                }
                file.transferTo(new File(f, img));
            } catch (Exception e) {
                e.printStackTrace();
                return ResultUtil.error(RespConstant.FILE_NO_EXIST_1);
            }
            //获取项目路径 例如项目名为test  则值为  /test
            String contextPath = request.getServletContext().getContextPath();
            Map<String, String> map = new HashMap<>();
            map.put("src", contextPath + "/uploads/" + img);
            map.put("savePath", path + img);

            return ResultUtil.ok(map);
        } else {
            return ResultUtil.error(RespConstant.FILE_TYPE_ERROR);
        }
    }

    /**
     * layui上传文件
     * 返回数据格式
     * {
     * "code": 0 //0表示成功，其它失败
     * ,"msg": "" //提示信息 //一般上传失败后返回
     * ,"data": {
     * "src": "图片路径"
     * ,"title": "图片名称" //可选
     * }
     * }
     *
     * @param file
     * @param request
     * @return
     */
    @RequestMapping(value = "/layeditUploadFile", produces = MediaType.APPLICATION_JSON_VALUE + ";charset=utf-8")
    @ResponseBody
    public Map<String, Object> layeditUploadFile(MultipartFile file, HttpServletRequest request) {
        Map<String, Object> map = new HashMap<>();
        if (file == null) {
            map.put("code", -1);
            map.put("msg", RespConstant.FILE_NO_EXIST);
            return map;
        }
        String fileSub = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")).toLowerCase();
        if (FILE_TYPE.contains(fileSub)) {
            Random d = new Random();
            String img = System.currentTimeMillis() + "_" + d.nextInt(10) + "" + fileSub;
            //获取当前项目上传文件路径  中的upload文件中
            //将当前日期格式化为文件夹路径 例如"20190203"
            //获取项目路径 项目名（上下文）
            String basePath = request.getSession().getServletContext().getRealPath("/uploads");
            System.out.println("basePath = " + basePath);
            String path = basePath;
            try {
                File f = new File(path);
                if (!f.exists()) {
                    f.mkdirs();
                }
                file.transferTo(new File(f, img));
            } catch (Exception e) {
                e.printStackTrace();
                map.put("code", -1);
                map.put("msg", RespConstant.FILE_NO_EXIST_1);
                return map;
            }
            //获取项目路径
            String contextPath = request.getServletContext().getContextPath();
            map.put("code", "0"); //0代表成功
            map.put("msg", "上传成功success"); //0代表成功
            Map data = new HashMap();
            data.put("src", contextPath + "/uploads/" + img);
            data.put("savePath", path + img);
            map.put("data", data); //0代表成功
            return map;
        } else {
            map.put("code", -1);
            map.put("msg", RespConstant.FILE_TYPE_ERROR);
            return map;
        }
    }

}
