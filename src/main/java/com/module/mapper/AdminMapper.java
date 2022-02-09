package com.module.mapper;

import com.module.pojo.Admin;

import java.util.List;
import java.util.Map;

/**
 * Admin 数据层
 *
 * @author administrator
 *
 */
public interface AdminMapper {

    /**
     * 查询Admin信息
     *
     * @param id AdminID
     * @return Admin信息
     */
    Admin selectAdminById(Integer id);

    /**
     * 查询Admin列表
     *
     * @param admin Admin信息
     * @return Admin集合
     */
    List<Admin> selectAdminList(Admin admin);

    /**
     * 查询所有Admin
     *
     * @return Admin列表
     */
    List<Admin> selectAll(Map map);

    /**
     * 新增Admin
     *
     * @param admin Admin信息
     * @return 结果
     */
    int insertAdmin(Admin admin);

    /**
     * 修改Admin
     *
     * @param admin Admin信息
     * @return 结果
     */
    int updateAdmin(Admin admin);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    int batchUpdate(List<Admin> list);

    /**
     * 删除Admin
     *
     * @param id AdminID
     * @return 结果
     */
    int deleteAdminById(Integer id);

    /**
     * 批量删除Admin
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int batchDeleteAdmin(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    int batchAdd(List<Admin> list);

}