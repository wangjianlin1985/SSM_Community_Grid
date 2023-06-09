package com.mapper;

import com.model.Sjduochu;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface SjduochuMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjduochu
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer sjduochuId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjduochu
     *
     * @mbggenerated
     */
    int insert(Sjduochu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjduochu
     *
     * @mbggenerated
     */
    Sjduochu selectByPrimaryKey(Integer sjduochuId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjduochu
     *
     * @mbggenerated
     */
	List<Sjduochu> selectAll(@Param("sjduochu")Sjduochu record,@Param("page")int page,@Param("rows")int rows, @Param("sdate")String sdate, @Param("edate")String edate, @Param("sdate1")String sdate1, @Param("edate1")String edate1);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_sjduochu
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Sjduochu record);
}