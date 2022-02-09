package com.module.mapper;

import com.module.pojo.LinkUrl;

import java.util.List;
import java.util.Map;

/**
 * 友情链接 数据层
 * 
 * @author administrator
 *
 */
public interface LinkUrlMapper
{

	/**
     * 查询友情链接信息
     * 
     * @param id 友情链接ID
     * @return 友情链接信息
     */
	LinkUrl selectLinkurlById(Integer id);
	
	/**
     * 查询友情链接列表
     * 
     * @param linkurl 友情链接信息
     * @return 友情链接集合
     */
	List<LinkUrl> selectLinkurlList(LinkUrl linkurl);
	
	/**
     * 查询所有友情链接
     * 
     * @return 友情链接列表
     */
	List<LinkUrl> selectAll(Map map);
	/**
     * 新增友情链接
     * 
     * @param linkurl 友情链接信息
     * @return 结果
     */
	int insertLinkurl(LinkUrl linkurl);
	
	/**
     * 修改友情链接
     * 
     * @param linkurl 友情链接信息
     * @return 结果
     */
	int updateLinkurl(LinkUrl linkurl);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<LinkUrl> list);
	/**
     * 删除友情链接
     * 
     * @param id 友情链接ID
     * @return 结果
     */
	int deleteLinkurlById(Integer id);
	
	/**
     * 批量删除友情链接
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteLinkurl(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<LinkUrl> list);
   
}