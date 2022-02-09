package com.module.mapper;

import com.module.pojo.Questionnaire;
import java.util.List;
import java.util.Map;

/**
 * 问卷 数据层
 * 
 * @author administrator
 *
 */
public interface QuestionnaireMapper
{

	/**
     * 查询问卷信息
     * 
     * @param id 问卷ID
     * @return 问卷信息
     */
	Questionnaire selectWenjuanById(Integer id);
	
	/**
     * 查询问卷列表
     * 
     * @param questionnaire 问卷信息
     * @return 问卷集合
     */
	List<Questionnaire> selectWenjuanList(Questionnaire questionnaire);
	
	/**
     * 查询所有问卷
     * 
     * @return 问卷列表
     */
	List<Questionnaire> selectAll(Map map);
	/**
     * 新增问卷
     * 
     * @param questionnaire 问卷信息
     * @return 结果
     */
	int insertWenjuan(Questionnaire questionnaire);
	
	/**
     * 修改问卷
     * 
     * @param questionnaire 问卷信息
     * @return 结果
     */
	int updateWenjuan(Questionnaire questionnaire);
	 /**
     * 批量修改
     * @param list
     * @return
     */
	 int batchUpdate(List<Questionnaire> list);
	/**
     * 删除问卷
     * 
     * @param id 问卷ID
     * @return 结果
     */
	int deleteWenjuanById(Integer id);
	
	/**
     * 批量删除问卷
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	int batchDeleteWenjuan(Integer[] ids);
	
    /**
     * 批量添加
     * @param list
     * @return
     */
	int batchAdd(List<Questionnaire> list);
   
}