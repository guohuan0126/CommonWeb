package com.module.mapper;

import com.module.pojo.UserInfo;
import java.util.List;
import java.util.Map;

/**
 * 用户信息 数据层
 * 
 * @author administrator
 *
 */
public interface UserInfoMapper
{

	/**
     * 查询用户信息信息
     * 
     * @param id 用户信息ID
     * @return 用户信息信息
     */
	UserInfo selectUserinfoById(Integer id);
	
	/**
     * 查询用户信息列表
     * 
     * @param userinfo 用户信息信息
     * @return 用户信息集合
     */
	List<UserInfo> selectUserinfoList(UserInfo userinfo);
	
	/**
     * 查询所有用户信息
     * 
     * @return 用户信息列表
     */
	List<UserInfo> selectAll(Map map);
	/**
     * 新增用户信息
     * 
     * @param userinfo 用户信息信息
     * @return 结果
     */
	int insertUserinfo(UserInfo userinfo);
	
	/**
     * 修改用户信息
     * 
     * @param userinfo 用户信息信息
     * @return 结果
     */
	int updateUserinfo(UserInfo userinfo);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<UserInfo> list);
	/**
     * 删除用户信息
     * 
     * @param id 用户信息ID
     * @return 结果
     */
	int deleteUserinfoById(Integer id);
	
	/**
     * 批量删除用户信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteUserinfo(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<UserInfo> list);
   
}