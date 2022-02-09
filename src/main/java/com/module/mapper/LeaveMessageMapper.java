package com.module.mapper;

import com.module.pojo.LeaveMessage;

import java.util.List;
import java.util.Map;

/**
 * 留言 数据层
 * 
 * @author administrator
 *
 */
public interface LeaveMessageMapper
{

	/**
     * 查询留言信息
     * 
     * @param id 留言ID
     * @return 留言信息
     */
	LeaveMessage selectLiuyanById(Integer id);
	
	/**
     * 查询留言列表
     * 
     * @param leaveMessage 留言信息
     * @return 留言集合
     */
	List<LeaveMessage> selectLiuyanList(LeaveMessage leaveMessage);
	
	/**
     * 查询所有留言
     * 
     * @return 留言列表
     */
	List<LeaveMessage> selectAll(Map map);
	/**
     * 新增留言
     * 
     * @param leaveMessage 留言信息
     * @return 结果
     */
	int insertLiuyan(LeaveMessage leaveMessage);
	
	/**
     * 修改留言
     * 
     * @param leaveMessage 留言信息
     * @return 结果
     */
	int updateLiuyan(LeaveMessage leaveMessage);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<LeaveMessage> list);
	/**
     * 删除留言
     * 
     * @param id 留言ID
     * @return 结果
     */
	int deleteLiuyanById(Integer id);
	
	/**
     * 批量删除留言
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteLiuyan(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<LeaveMessage> list);
   
}