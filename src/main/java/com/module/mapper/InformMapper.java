package com.module.mapper;

import com.module.pojo.Inform;

import java.util.List;
import java.util.Map;

/**
 * Inform 数据层
 *
 * @author administrator
 *
 */
public interface InformMapper {

    /**
     * 查询Inform信息
     *
     * @param id InformID
     * @return Inform信息
     */
    Inform selectInformById(Integer id);

    /**
     * 查询Inform列表
     *
     * @param inform Inform信息
     * @return Inform集合
     */
    List<Inform> selectInformList(Inform inform);

    /**
     * 查询所有Inform
     *
     * @return Inform列表
     */
    List<Inform> selectAll(Map map);

    /**
     * 新增Inform
     *
     * @param inform Inform信息
     * @return 结果
     */
    int insertInform(Inform inform);

    /**
     * 修改Inform
     *
     * @param inform Inform信息
     * @return 结果
     */
    int updateInform(Inform inform);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    int batchUpdate(List<Inform> list);

    /**
     * 删除Inform
     *
     * @param id InformID
     * @return 结果
     */
    int deleteInformById(Integer id);

    /**
     * 批量删除Inform
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int batchDeleteInform(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    int batchAdd(List<Inform> list);

}