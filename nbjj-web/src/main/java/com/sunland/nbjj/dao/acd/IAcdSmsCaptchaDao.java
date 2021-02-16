package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.dto.acd.AcdSyncSmsDto;
import com.sunland.nbjj.po.acd.AcdSyncSmsCaptcha;

/**
 * Created by xdb on 2016/5/31.
 */
@MyBatisRepository
public interface IAcdSmsCaptchaDao {
    public AcdSyncSmsCaptcha getAcdSmsCaptchaBySjhmYzm(AcdSyncSmsDto smsDto);
}
