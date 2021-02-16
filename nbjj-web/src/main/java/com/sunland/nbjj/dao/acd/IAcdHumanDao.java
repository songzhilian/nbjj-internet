package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acd.AcdDutySimpleHuman;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by xdb on 2016/5/26.
 */
@MyBatisRepository
public interface IAcdHumanDao {

    List<AcdDutySimpleHuman> getAcdHumanListByLsh(@Param(value = "lsh")Long lsh);
}
