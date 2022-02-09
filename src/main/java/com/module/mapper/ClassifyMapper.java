package com.module.mapper;

import com.module.pojo.Classify;

import java.util.List;
import java.util.Map;

/**
 * 分类 数据层
 * 
 * @author administrator
 *
 */
public interface ClassifyMapper
{

	/**
     * 查询分类信息
     * 
     * @param id 分类ID
     * @return 分类信息
     */
	Classify selectSorttypeById(Integer id);
	
	/**
     * 查询分类列表
     * 
     * @param classify 分类信息
     * @return 分类集合
     */
	List<Classify> selectSorttypeList(Classify classify);
	
	/**
     * 查询所有分类
     * 
     * @return 分类列表
     */
	List<Classify> selectAll(Map map);
	/**
     * 新增分类
     * 
     * @param classify 分类信息
     * @return 结果
     */
	int insertSorttype(Classify classify);
	
	/**
     * 修改分类
     * 
     * @param classify 分类信息
     * @return 结果
     */
	int updateSorttype(Classify classify);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<Classify> list);
	/**
     * 删除分类
     * 
     * @param id 分类ID
     * @return 结果
     */
	int deleteSorttypeById(Integer id);
	
	/**
     * 批量删除分类
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteSorttype(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<Classify> list);
   
}