package com.mapper;

import com.model.Sjlaiyuan;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SjlaiyuanMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjlaiyuan
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer sjlaiyuanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjlaiyuan
     *
     * @mbggenerated
     */
    int insert(Sjlaiyuan record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjlaiyuan
     *
     * @mbggenerated
     */
    Sjlaiyuan selectByPrimaryKey(Integer sjlaiyuanId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjlaiyuan
     *
     * @mbggenerated
     */
    List<Sjlaiyuan> selectAll(@Param("sjlaiyuan")Sjlaiyuan record,@Param("page")int page,@Param("rows")int rows);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjlaiyuan
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Sjlaiyuan record);
}