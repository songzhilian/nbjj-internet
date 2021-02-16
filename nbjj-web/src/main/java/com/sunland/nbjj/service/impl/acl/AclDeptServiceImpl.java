package com.sunland.nbjj.service.impl.acl;

import com.sunland.nbjj.dao.acl.IAclDeptDao;
import com.sunland.nbjj.po.acl.AclDept;
import com.sunland.nbjj.service.acl.IAclDeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by xdb on 2016/5/29.
 */
@Service
public class AclDeptServiceImpl implements IAclDeptService {

    @Autowired
    private IAclDeptDao aclDeptDao;

    @Override
    public AclDept getDept(String bmdm) {
        return aclDeptDao.getDept(bmdm);
    }
}
