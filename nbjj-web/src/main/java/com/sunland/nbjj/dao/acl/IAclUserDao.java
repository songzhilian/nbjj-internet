package com.sunland.nbjj.dao.acl;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acl.AclUser;

/**
 * Created by xdb on 2016/5/28.
 */
@MyBatisRepository
public interface IAclUserDao {

    public AclUser getUserInfoByYhdm(String yhdm);



}
