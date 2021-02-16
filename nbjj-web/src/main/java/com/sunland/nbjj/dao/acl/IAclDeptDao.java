package com.sunland.nbjj.dao.acl;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.acl.AclDept;

/**
 * Created by xdb on 2016/5/28.
 */
@MyBatisRepository
public interface IAclDeptDao {
    public AclDept getDept(String bmdm);
}
