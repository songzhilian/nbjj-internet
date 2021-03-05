package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.dto.acd.AcdZxxsDto;
import com.sunland.nbjj.po.acd.AcdZxxs;
import com.sunland.nbjj.query.acd.AcdParamInfo;

import java.util.List;

@MyBatisRepository
public interface IAcdZxxsDao {

    public List<AcdZxxs> getAcdZxxsVerifyList(AcdParamInfo paramInfo) throws Exception;

    public Integer getAcdZxxsVerifyCount(AcdParamInfo paramInfo) throws Exception;

    public AcdZxxs getAcdZxxsInfoByLsh(Long lsh);

    public int updateAcdZxxs(AcdZxxsDto acdZxxsDto);

    public void applyAcdZxxs(AcdZxxsDto acdZxxsDto);
}
