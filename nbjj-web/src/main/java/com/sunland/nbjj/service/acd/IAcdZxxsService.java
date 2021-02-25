package com.sunland.nbjj.service.acd;

import com.sunland.nbjj.po.acd.AcdZxxs;
import com.sunland.nbjj.query.acd.AcdParamInfo;

import java.util.List;

public interface IAcdZxxsService {

    public List<AcdZxxs> getAcdZxxsVerifyList(AcdParamInfo paramInfo) throws Exception;

    public Integer getAcdZxxsVerifyTotal(AcdParamInfo acdParamInfo) throws Exception;
}
