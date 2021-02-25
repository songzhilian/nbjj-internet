package com.sunland.nbjj.service.acd;

import com.sunland.nbjj.dto.acd.AcdBxgsDto;
import com.sunland.nbjj.dto.acd.AcdSyncSmsDto;
import com.sunland.nbjj.po.acd.AcdDutySimple;
import com.sunland.nbjj.po.acd.AcdSyncSms;
import com.sunland.nbjj.po.acd.AcdSyncSmsCaptcha;
import com.sunland.nbjj.po.acd.AcdZxxs;
import com.sunland.nbjj.query.acd.AcdParamInfo;

import java.util.List;

/**
 * Created by xdb on 2016/5/25.
 */
public interface IAcdService {

    public List<AcdDutySimple> getAcdList(AcdParamInfo paramInfo)throws Exception;

    public Integer getAcdTotal(AcdParamInfo paramInfo)throws Exception;

    public AcdDutySimple getAcdInfoByLsh(Long lsh)throws Exception;

    public AcdDutySimple getAcdInfoBySgbh(String sgbh)throws Exception;

    public Long getAcdLshBySgbh(String sgbh)throws Exception;

    public boolean checkAcdBySgbhSjhm(String sgbh,String sjhm) throws Exception;

    public AcdSyncSmsCaptcha getAcdSmsCaptchaBySjhmYzm(AcdSyncSmsDto smsDto)throws Exception;

    public void saveAcdSms(AcdSyncSms sms)throws Exception;

    public AcdZxxs getAcdZxxsInfoByLsh(Long lsh) throws Exception;


}
