package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acd.AcdBxgs;

import java.util.List;

@MyBatisRepository
public interface IAcdBxgsDao {
    public List<AcdBxgs> getAcdBxgsList();
}
