package com.module.util;

import org.apache.commons.lang.StringUtils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 功能简介：MD5加密工具类
 * 密码等安全信息存入数据库时，转换成MD5加密形式
 * @author huhao
 */
public class MD5Util {
    /**
     * 加盐密码
     */
    public static final String SALT = "";

    public static String getMd5(String pwd) {
        pwd = SALT + pwd;
        String outStr = null;
        if (StringUtils.isBlank(pwd)) {
            outStr = null;
        } else if ("".equals(pwd)) {
            outStr = "";
        } else {
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(pwd.getBytes());
                byte[] b = md.digest();
                StringBuilder buf = new StringBuilder();
                for (int i = 1; i < b.length; i++) {
                    int c = b[i] >>> 4 & 0xf;
                    buf.append(Integer.toHexString(c));
                    c = b[i] & 0xf;
                    buf.append(Integer.toHexString(c));
                }
                outStr = buf.toString();
            } catch (NoSuchAlgorithmException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return outStr;
    }

    public static void main(String[] args) {
        String pwd = "123456";
        pwd = MD5Util.getMd5(pwd);
        System.out.println(pwd);

    }

}