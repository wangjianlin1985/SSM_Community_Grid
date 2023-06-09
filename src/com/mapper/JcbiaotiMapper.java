package com.mapper;

import com.model.Jcbiaoti;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface JcbiaotiMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcbiaoti
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer jcbiaotiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcbiaoti
     *
     * @mbggenerated
     */
    int insert(Jcbiaoti record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcbiaoti
     *
     * @mbggenerated
     */
    Jcbiaoti selectByPrimaryKey(Integer jcbiaotiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcbiaoti
     *
     * @mbggenerated
     */
    List<Jcbiaoti> selectAll(@Param("jcbiaoti")Jcbiaoti record,@Param("page")int page,@Param("rows")int rows);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcbiaoti
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Jcbiaoti record);
}