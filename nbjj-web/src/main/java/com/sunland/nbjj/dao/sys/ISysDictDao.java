package com.sunland.nbjj.dao.sys;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import org.apache.ibatis.annotations.Param;

/**
 * Created by marty on 2016/8/4.
 */
@MyBatisRepository
public interface ISysDictDao {

    public String getSysDictValue(@Param(value = "dmlb") String dmlb, @Param(value = "dmz") String dmz);
}
