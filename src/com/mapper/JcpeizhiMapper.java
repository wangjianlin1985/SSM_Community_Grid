package com.mapper;

import com.model.Jcpeizhi;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface JcpeizhiMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcpeizhi
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer jcpeizhiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcpeizhi
     *
     * @mbggenerated
     */
    int insert(Jcpeizhi record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcpeizhi
     *
     * @mbggenerated
     */
    Jcpeizhi selectByPrimaryKey(Integer jcpeizhiId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcpeizhi
     *
     * @mbggenerated
     */
    List<Jcpeizhi> selectAll(@Param("jcpeizhi")Jcpeizhi record,@Param("page")int page,@Param("rows")int rows);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table t_jcpeizhi
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(Jcpeizhi record);
}