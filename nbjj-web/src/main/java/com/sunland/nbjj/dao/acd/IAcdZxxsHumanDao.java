package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acd.AcdZxxsHuman;
import org.apache.ibatis.annotations.Param;

@MyBatisRepository
public interface IAcdZxxsHumanDao {
    public AcdZxxsHuman getAcdZxxsHumamByLsh(@Param(value = "lsh") Long lsh) throws Exception;
}
