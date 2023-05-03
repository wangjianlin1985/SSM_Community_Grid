package com.mapper;

import com.model.Uxinxi;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UxinxiMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_uxinxi
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer uxinxiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_uxinxi
     *
     * @mbggenerated
     */
    int insert(Uxinxi record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_uxinxi
     *
     * @mbggenerated
     */
    Uxinxi selectByPrimaryKey(Integer uxinxiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_uxinxi
     *
     * @mbggenerated
     */
    List<Uxinxi> selectAll(@Param("uxinxi")Uxinxi record,@Param("page")int page,@Param("rows")int rows, @Param("sdate")String sdate, @Param("edate")String edate);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_uxinxi
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Uxinxi record);
}