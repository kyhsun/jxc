package com.zx.mapper;

import com.zx.pojo.Leavebill;
import com.zx.pojo.LeavebillExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface LeavebillMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int countByExample(LeavebillExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int deleteByExample(LeavebillExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int deleteByPrimaryKey(Integer leavebillid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int insert(Leavebill record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int insertSelective(Leavebill record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    List<Leavebill> selectByExample(LeavebillExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    Leavebill selectByPrimaryKey(Integer leavebillid);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int updateByExampleSelective(@Param("record") Leavebill record, @Param("example") LeavebillExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int updateByExample(@Param("record") Leavebill record, @Param("example") LeavebillExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int updateByPrimaryKeySelective(Leavebill record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table leavebill
     *
     * @mbggenerated Fri Sep 07 21:02:21 CST 2018
     */
    int updateByPrimaryKey(Leavebill record);
}