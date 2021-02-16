package com.sunland.nbjj.dao.acd;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acd.AcdSyncSms;

/**
 * Created by xdb on 2016/5/31.
 */
@MyBatisRepository
public interface IAcdSmsDao {
    public void saveAcdSms(AcdSyncSms sms);
}
