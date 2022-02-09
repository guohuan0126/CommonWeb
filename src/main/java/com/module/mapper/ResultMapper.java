package com.module.mapper;

import com.module.pojo.Result;
import com.module.pojo.ResultInfo;
import com.module.pojo.ResultVo;

import java.util.List;
import java.util.Map;

/**
 * 问卷结果 数据层
 * 
 * @author administrator
 *
 */
public interface ResultMapper
{

	/**
     * 查询问卷结果信息
     * 
     * @param id 问卷结果ID
     * @return 问卷结果信息
     */
	Result selectWenjuanjieguoById(Integer id);

	/**
	 * 查询问卷结果信息根据用户id
	 *
	 * @param userId 问卷结果ID
	 * @return 问卷结果信息
	 */
	Integer selectWenjuanjieguoByUserId(Integer userId);
	
	/**
     * 查询问卷结果列表
     * 
     * @param result 问卷结果信息
     * @return 问卷结果集合
     */
	List<Result> selectWenjuanjieguoList(Result result);
	
	/**
     * 查询所有问卷结果
     * 
     * @return 问卷结果列表
     */
	List<Result> selectAll(Map map);

	/**
	 * 查询所有问卷结果
	 *
	 * @return 问卷结果列表
	 */
	List<ResultVo> selectAllWenJuan(Map map);
	/**
     * 新增问卷结果
     * 
     * @param result 问卷结果信息
     * @return 结果
     */
	int insertWenjuanjieguo(Result result);
	
	/**
     * 修改问卷结果
     * 
     * @param result 问卷结果信息
     * @return 结果
     */
	int updateWenjuanjieguo(Result result);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<Result> list);
	/**
     * 删除问卷结果
     * 
     * @param id 问卷结果ID
     * @return 结果
     */
	int deleteWenjuanjieguoById(Integer id);

	/**
	 * 删除问卷结果根据用户id
	 *
	 * @param id 问卷结果ID
	 * @return 结果
	 */
	int deleteWenjuanjieguoByUserId(Integer id);
	
	/**
     * 批量删除问卷结果
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteWenjuanjieguo(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<Result> list);

	/**
	 * 查询问卷结果信息根据用户id
	 *
	 * @param userId 问卷结果ID
	 * @return 问卷结果信息
	 */
	List<ResultInfo> selectWenjuanjieguoInfoByUserId(Integer userId);
   
}