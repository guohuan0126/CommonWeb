package com.module.mapper;

import com.module.pojo.Article;

import java.util.List;
import java.util.Map;

/**
 * 帖子 数据层
 *
 * @author administrator
 *
 */
public interface ArticleMapper {
    /**
     * 数据统计查询
     *
     * @param map
     * @return
     */
    List<Map> countData(Map map);

    /**
     * 查询帖子信息
     *
     * @param id 帖子ID
     * @return 帖子信息
     */
    Article selectArticleById(Integer id);

    /**
     * 查询帖子列表
     *
     * @param article 帖子信息
     * @return 帖子集合
     */
    List<Article> selectArticleList(Article article);

    /**
     * 查询所有帖子
     *
     * @return 帖子列表
     */
    List<Article> selectAll(Map map);

    /**
     * 新增帖子
     *
     * @param article 帖子信息
     * @return 结果
     */
    int insertArticle(Article article);

    /**
     * 修改帖子
     *
     * @param article 帖子信息
     * @return 结果
     */
    int updateArticle(Article article);

    /**
     * 批量修改
     *
     * @param list
     * @return
     */
    int batchUpdate(List<Article> list);

    /**
     * 删除帖子
     *
     * @param id 帖子ID
     * @return 结果
     */
    int deleteArticleById(Integer id);

    /**
     * 批量删除帖子
     *
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    int batchDeleteArticle(Integer[] ids);

    /**
     * 批量添加
     *
     * @param list
     * @return
     */
    int batchAdd(List<Article> list);

}